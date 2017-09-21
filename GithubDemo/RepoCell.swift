//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Terra Oldham on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView!

    
    var repo: GithubRepo? {
        didSet {
            self.repoName.text = repo?.name
            self.ownerLabel.text = repo?.ownerHandle
            self.forksLabel.text = String(format: "%d", (repo?.forks)!)
            self.starsLabel.text = String(format: "%d", (repo?.stars)!)
            self.descriptionLabel.text = repo?.description
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
