//
//  MosaicLayout.swift
//  MosaicSwift
//
//  Created by Usue on 10/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

struct MosaicSizes {
    static let width = UIScreen.mainScreen().bounds.size.width/2
    static let minHeight = UInt32(UIScreen.mainScreen().bounds.size.width/4)
    static let maxHeight = UInt32(UIScreen.mainScreen().bounds.size.width)
}

class MosaicLayout: UICollectionViewLayout
{
    var totalHeight: CGFloat = 0
    private var cacheAtts = [UICollectionViewLayoutAttributes]()
    
    override func prepareLayout()
    {
        if cacheAtts.isEmpty {
            for item in 0 ..< collectionView!.numberOfItemsInSection(0) {
                let indexPath = NSIndexPath(forItem: item, inSection: 0)
                let attributes = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
                var y: CGFloat = 0, x: CGFloat = item%2 == 0 ? 0 : MosaicSizes.width
                
                if item > 1 {
                    let prevFrame = cacheAtts[item - 2].frame
                    y = prevFrame.origin.y + prevFrame.size.height
                }
                
                let width = MosaicSizes.width
                let height = CGFloat(arc4random_uniform(MosaicSizes.maxHeight - MosaicSizes.minHeight) + MosaicSizes.minHeight)
                
                attributes.frame = CGRectMake(x, y, width, height)
                totalHeight = y + height > totalHeight ? y + height : totalHeight
                
                cacheAtts.append(attributes)
            }
        }
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
    {
        var layoutAttributes = [UICollectionViewLayoutAttributes]()
        
        for attributes in cacheAtts {
            if CGRectIntersectsRect(attributes.frame, rect) {
                layoutAttributes.append(attributes)
            }
        }
        return layoutAttributes
    }
    
    override func collectionViewContentSize() -> CGSize
    {
        return CGSize(width: MosaicSizes.width*2, height: totalHeight)
    }
}
