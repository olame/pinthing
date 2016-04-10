//
//  AddTrackController.swift
//  pinthing
//
//  Created by Максим Прокопьев on 10.04.16.
//  Copyright © 2016 M&O. All rights reserved.
//

import UIKit
class AddTrackController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var trackPath: UITextField!
    @IBAction func addTrackClicked(sender: AnyObject) {
        
        
        if let url = NSURL(string: trackPath.text!) {
            let repository = RepositoryBase()
            
            repository.getGpx(url){
                ///gggg
                (let data, let response, let error) in
                
                guard let httpResponse = response as? NSHTTPURLResponse else {
                    return
                }
                
                dispatch_async(dispatch_get_main_queue()){

                    self.result.text = "\(httpResponse.statusCode)"
                }
            }

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
