//
//  MosaicPreview.swift
//  MosaicSwift
//
//  Created by Usue on 9/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

class MosaicPreview: UIViewController
{
    var image: UIImage!
    @IBOutlet weak var previewImage: UIImageView!
    
    init(image: UIImage)
    {
        super.init(nibName: nil, bundle: nil)
        self.image = image
                
        self.view.frame = UIScreen.main.bounds
    }

    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.previewImage.image = self.image        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
        
    @IBAction func closeView()
    {
        Animations.flipTransitionToRemoveView(view: self.view)
    }
}
