//
//  GoonieDetailViewController.swift
//  GitHubGoonies
//
//  Created by Joe E. on 9/29/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class GoonieDetailViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var goonieFullNameLabel: UILabel!
    @IBOutlet weak var goonieUsernameLabel: UILabel!
    @IBOutlet weak var goonieLocationLabel: UILabel!
    @IBOutlet weak var goonieEmailLabel: UILabel!
    @IBOutlet weak var goonieRepoCount: UILabel!
    
    var userIndex: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = users[userIndex]
        goonieUsernameLabel.text = user["login"] as? String
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        

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
