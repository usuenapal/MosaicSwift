//
//  MosaicCollectionViewController.swift
//  MosaicSwift
//
//  Created by Usue on 9/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

private let reuseIdentifier = "UsuMosaicCell"

class MosaicCollectionViewController: UICollectionViewController
{
    var links: [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.collectionView!.registerNib(UINib(nibName: "MosaicCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return links.count;
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MosaicCell
        
        cell.configureMosaicCell(indexPath.row)
                
        return cell
    }
        
    
    // MARK: UICollectionViewDelegate
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! MosaicCell
        let preview = MosaicPreview(image: cell.cellImage.image!)
        
        self.addChildViewController(preview)
        Animations.curlTransitionToView(preview.view, fromView: self.view);
    }
}
