//
//  MainTableViewCell.swift
//  NVAccessibilitySolution_Example
//
//  Created by KBIZ on 2021/11/22.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
