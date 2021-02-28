//
//  PRTableViewCell.swift
//  TsuExam
//
//  Created by Chris Schoenfeld on 2/27/21.
//

import UIKit

class PRTableViewCell: UITableViewCell {

    @IBOutlet weak var changeText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(for pr: GitHubAPI.Response) {
        changeText.text = pr.title
    }

    
    
}
