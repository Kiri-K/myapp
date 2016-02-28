//
//  page1cell.swift
//  my app
//
//  Created by Kiri on 2016/02/28.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit

class page1cell: UITableViewCell {


    @IBOutlet weak var gazou: UIImageView!
    
    @IBOutlet weak var namae: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
