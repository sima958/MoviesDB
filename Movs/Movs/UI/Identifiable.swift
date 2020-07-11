//
//  ReusableView.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

protocol Identifiable: AnyObject {}

extension Identifiable where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension Identifiable where Self: UITableViewCell {
    static var identifier: String {
        return String(describing: self)
    }
}

extension Identifiable where Self: BaseTableViewHeaderFooterView {
    static var identifier: String {
        return String(describing: self)
    }
}
