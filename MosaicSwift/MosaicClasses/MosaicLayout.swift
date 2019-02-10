//
//  MosaicLayout.swift
//  MosaicSwift
//
//  Created by Usue on 10/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

struct MosaicSizes {
    static let width = UIScreen.main.bounds.size.width/2
    static let minHeight = UInt32(UIScreen.main.bounds.size.width/4)
    static let maxHeight = UInt32(UIScreen.main.bounds.size.width)
}

class MosaicLayout: UICollectionViewLayout
{
    var totalHeight: CGFloat = 0
    private var cacheAtts = [UICollectionViewLayoutAttributes]()
    
    override func prepare()
    {
        if cacheAtts.isEmpty {
            for item in 0 ..< collectionView!.numberOfItems(inSection: 0) {
                let indexPath = NSIndexPath(item: item, section: 0)
                let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath as IndexPath)
                var y: CGFloat = 0, x: CGFloat = item%2 == 0 ? 0 : MosaicSizes.width
                
                if item > 1 {
                    let prevFrame = cacheAtts[item - 2].frame
                    y = prevFrame.origin.y + prevFrame.size.height
                }
                
                let width = MosaicSizes.width
                let height = CGFloat(arc4random_uniform(MosaicSizes.maxHeight - MosaicSizes.minHeight) + MosaicSizes.minHeight)
                
                attributes.frame = CGRect(origin: CGPoint(x: x, y: y), size: CGSize(width: width, height: height))
                totalHeight = y + height > totalHeight ? y + height : totalHeight
                
                cacheAtts.append(attributes)
            }
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?
    {
        var layoutAttributes = [UICollectionViewLayoutAttributes]()
        
        for attributes in cacheAtts {
            if attributes.frame.intersects(rect) {
                layoutAttributes.append(attributes)
            }
        }
        
        return layoutAttributes
    }
    
    override var collectionViewContentSize: CGSize
    {
        return CGSize(width: MosaicSizes.width*2, height: totalHeight)
    }
}
