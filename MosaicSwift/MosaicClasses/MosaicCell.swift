//
//  MosaicCell.swift
//  MosaicSwift
//
//  Created by Usue on 8/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

class MosaicCell: UICollectionViewCell
{
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var actView: UIActivityIndicatorView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
            
    func configureMosaicCell(row: NSInteger)
    {
        tag = row
                
        cellImage.image = nil
        cellImage.contentMode = UIViewContentMode.scaleAspectFill
        LazyLoading.setViewWithImageUrl(url: Links.arrayOfLinks[row], view: cellImage, activityIndicator: actView)
    }
}
