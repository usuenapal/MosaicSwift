//
//  LazyLoading.swift
//  MosaicSwift
//
//  Created by Usue on 8/12/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

class LazyLoading: NSObject
{
    static let kUDimagesCache = "UDimagesCache"
    
    static func setViewWithImageUrl(url: String, view: UIImageView, activityIndicator: UIActivityIndicatorView)
    {        
        //view.image = LazyLoading.getImageForUrl(url)
        activityIndicator.startAnimating()
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            let image = LazyLoading.getImageForUrl(url)
            
            dispatch_async(dispatch_get_main_queue()) {
                view.image = image
                activityIndicator.stopAnimating()
            }
        }
    }
    
    static func getImageForUrl(url: String) -> UIImage
    {
        var cache: NSMutableDictionary?
        
        if let aux = NSUserDefaults.standardUserDefaults().objectForKey(kUDimagesCache) {
            cache = NSMutableDictionary(dictionary: aux as! [NSObject : AnyObject]);
        } else {
            cache = NSMutableDictionary(dictionary: NSDictionary());
        }
        
        if let imageData = cache!.objectForKey(url) {
            return UIImage(data: imageData as! NSData)!
        }
        
        let imageData = NSData(contentsOfURL: NSURL(string: url)!)!
        cache!.setObject(imageData, forKey: url)
        NSUserDefaults.standardUserDefaults().setObject(cache, forKey: kUDimagesCache)

        return UIImage(data: imageData)!
    }
}
