//
//  ActorTableViewCell.swift
//  MarvelMovie
//
//  Created by AndyPan on 2018/3/30.
//  Copyright © 2018年 Andy Pan. All rights reserved.
//

import UIKit
import SafariServices

class ActorTableViewCell: UITableViewCell {

    @IBOutlet var actorImage: UIImageView!
    @IBOutlet var roleNameLabel: UILabel!
    @IBOutlet var actorNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
