//
//  BaseViewController.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews () {
        view.backgroundColor = .white
    }
}
