//
//  BaseTableViewCell.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 01/03/18.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            alpha = 0.5
        } else {
            alpha = 1
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews() {
        selectionStyle = .none
        backgroundColor = .white
    }
}
