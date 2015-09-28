//
//  GoonieTableViewCell.swift
//  GitHubGoonies
//
//  Created by Joe E. on 9/28/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class GoonieTableViewCell: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
