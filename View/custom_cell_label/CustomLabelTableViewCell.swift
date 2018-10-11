//
//  CustomLabelTableViewCell.swift
//  edit table row
//
//  Created by Tammy Le on 10/11/18.
//  Copyright © 2018 Tammy Le. All rights reserved.
//

import UIKit

class CustomLabelTableViewCell: UITableViewCell {

    @IBOutlet weak var customTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
}
