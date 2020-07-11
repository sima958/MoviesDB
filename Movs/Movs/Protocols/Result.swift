//
//  Result.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case error(ErrorModel)
}
