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
        self.tag = row
                
        self.cellImage.image = nil
        self.cellImage.contentMode = UIViewContentMode.ScaleAspectFill
        
        LazyLoading.setViewWithImageUrl(Links.arrayOfLinks[row], view: cellImage, activityIndicator: actView)
    }
}
