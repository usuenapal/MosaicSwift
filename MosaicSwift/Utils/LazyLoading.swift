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
        activityIndicator.startAnimating()
        
        DispatchQueue.global(qos: .default).async() {
            let image = LazyLoading.getImageForUrl(url: url)
            
            DispatchQueue.main.async {
                view.image = image
                activityIndicator.stopAnimating()
            }
        }
    }
    
    static func getImageForUrl(url: String) -> UIImage
    {
        var cache: NSMutableDictionary?
        
        if let aux = UserDefaults.standard.object(forKey: kUDimagesCache) {
            cache = NSMutableDictionary(dictionary: aux as! [NSObject : AnyObject]);
        } else {
            cache = NSMutableDictionary(dictionary: NSDictionary());
        }
        
        if let imageData = cache!.object(forKey: url) {
            return UIImage(data: (imageData as! NSData) as Data)!
        }
        
        do {
            let imageData = try Data(contentsOf: URL(string: url)!)
            
            cache!.setObject(imageData, forKey: url as NSCopying)
            UserDefaults.standard.set(cache, forKey: kUDimagesCache)
            return UIImage(data: imageData)!
        } catch {
            return UIImage()
        }
    }
}
