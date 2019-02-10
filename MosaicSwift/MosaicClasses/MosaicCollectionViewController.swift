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
        
        collectionView!.register(UINib(nibName: "MosaicCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return links.count;
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MosaicCell
        cell.configureMosaicCell(row: indexPath.row)
                
        return cell
    }
        
    
    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.cellForItem(at: indexPath as IndexPath) as! MosaicCell
        let preview = MosaicPreview(image: cell.cellImage.image!)
        
        addChildViewController(preview)
        Animations.curlTransitionToView(view: preview.view, fromView: view);
    }
}
