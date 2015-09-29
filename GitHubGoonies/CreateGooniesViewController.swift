//
//  CreateGooniesViewController.swift
//  GitHubGoonies
//
//  Created by Joe E. on 9/29/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class CreateGooniesViewController: UIViewController {
    @IBAction func cancelCreate(sender:AnyObject) {
        navigationController?.dismissViewControllerAnimated(true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GitHubRequest.requestUserInfo("Montchat") { (responseInfo) -> () in
            
            if let user = responseInfo as? [String:AnyObject] {

                users.append(user)
                
                
            }
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
