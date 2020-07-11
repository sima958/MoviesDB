//
//  BaseTableViewHeaderFooterView.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 02/03/18.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

class BaseTableViewHeaderFooterView: UITableViewHeaderFooterView, Identifiable {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews() {
        let bgView = UIView(frame: bounds)
        bgView.backgroundColor = .white
        backgroundView = bgView
    }
}
