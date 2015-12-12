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
        UIView.transitionWithView(fromView, duration: 0.8, options: UIViewAnimationOptions.TransitionCurlDown, animations:{
            fromView.addSubview(view)
            }, completion: nil)
    }
    
    static func flipTransitionToRemoveView(view: UIView)
    {
        UIView.transitionWithView(view, duration: 0.8, options: UIViewAnimationOptions.TransitionFlipFromRight, animations:{
            view.hidden = true
            }, completion:{finished in view.removeFromSuperview()})
    }
}
