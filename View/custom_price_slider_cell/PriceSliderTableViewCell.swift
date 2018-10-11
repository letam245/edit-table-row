//
//  ActivityTableViewCell.swift
//  metrics
//
//  Created by David Goodman on 10/9/18.
//  Copyright © 2018 David Goodman. All rights reserved.
//

import UIKit

class PriceSliderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        slider.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let value = sender.value.rounded(.down)
        
        sender.setValue(value, animated: true)
        valueLabel.text = "\(Int(value))"
    }

}
