//
//  PopularVCViewState.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 02/03/18.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import Foundation

enum PopularVCViewState<T: Decodable>: Equatable {
    case loading
    case finished(T)
    case filtering
    case empty
    case error(ErrorModel)
}

func ==<T>(lhs: PopularVCViewState<T>, rhs: PopularVCViewState<T>) -> Bool {
    switch (lhs, rhs) {
    case (.loading, .loading): return true
    case (.finished(_), .finished(_)): return true
    case (.filtering, .filtering): return true
    case (.empty, .empty): return true
    case (.error(_), .error(_)): return true
    default: return false
    }
}
