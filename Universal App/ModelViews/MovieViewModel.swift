//
//  MovieViewModel.swift
//  UniversalApp
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import Foundation

class MovieViewModel {
  
  var movieTitle: String
  
  init(movie: Movie) {
    self.movieTitle = movie.title
  }
}
