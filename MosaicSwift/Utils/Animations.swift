//
//  Animations.swift
//  MosaicSwift
//
//  Created by Usue on 9/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

class Animations: NSObject
{
    static func curlTransitionToView(view: UIView, fromView: UIView)
    {
        UIView.transition(with: fromView, duration: 0.8, options: UIViewAnimationOptions.transitionCurlDown, animations:{
            fromView.addSubview(view)
            }, completion: nil)
    }
    
    static func flipTransitionToRemoveView(view: UIView)
    {
        UIView.transition(with: view, duration: 0.8, options: UIViewAnimationOptions.transitionFlipFromRight, animations:{
            view.isHidden = true
            }, completion:{finished in view.removeFromSuperview()})
    }
}
