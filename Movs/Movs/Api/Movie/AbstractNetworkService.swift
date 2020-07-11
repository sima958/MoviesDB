//
//  MovieService.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import Foundation

protocol AbstractNetworkService: Service {
    func getPopularMovies(page: Int, completion: @escaping Response<PopularMoviesResponse>)
    func getGenres(completion: @escaping Response<[Genre]>)
}
