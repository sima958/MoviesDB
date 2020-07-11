//
//  FilterRowTableViewCell.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 05/03/18.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

class FilterRowTableViewCell: UITableViewCell {
    let filterType: FilterType
    
    init(filterType: FilterType) {
        self.filterType = filterType
        super.init(style: .value1, reuseIdentifier: FilterRowTableViewCell.identifier)
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
