//
//  MovieViewModel.swift
//  UniversalApp
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import Foundation
import UIKit

class MovieViewModel {
  
  var movieTitle: String
  var image = UIImage(named: "LoadingImg")
  
  
  init(movie: Movie) {
    self.movieTitle = movie.title
   
  }
  
}
