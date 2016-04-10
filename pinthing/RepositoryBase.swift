//
//  RepositoryBase.swift
//  pinthing
//
//  Created by Максим Прокопьев on 10.04.16.
//  Copyright © 2016 M&O. All rights reserved.
//

import Foundation
class RepositoryBase: IRepository {
    func getGpx(url: NSURL, completion: (data: NSData?, responce: NSURLResponse?, error: NSError?) -> Void){
        
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        
        let task = session.dataTaskWithURL(url) {
            d,r,e in
            
            completion(data: d, responce: r, error: e)
        }
        
        task.resume()
    }
}


protocol IRepository {
    func getGpx(url: NSURL, completion: (data: NSData?, responce: NSURLResponse?, error: NSError?) -> Void)
}