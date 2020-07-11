//
//  UIApplication+Extension.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBarManager") as? UIView
    }
}
