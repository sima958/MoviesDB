//
//  TypeAlias.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import Foundation

typealias Params = [String: String]
typealias Response<T: Decodable> = (Result<T>) -> ()
