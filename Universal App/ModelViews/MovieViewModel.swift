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
  var releaseDate: String
  var rating: String
  
  var url: URL?
  enum ImageLoadState {
    case loading
    case loaded
  }
  var imageState: ImageLoadState?
  
  init(movie: Movie) {
    self.movieTitle = movie.title
    self.url = movie.imageHref
    self.releaseDate = movie.releaseDate
    self.rating = movie.rating?.description ?? ""
    
  }
  
  
  func loadImage(success: @escaping (UIImage?)->()) {
    if imageState != nil { return }
    print("Loading", movieTitle)
    guard let url = url else {
      imageState = .loaded
      image = nil
      success(nil)
      return
    }
    DispatchQueue.global().async {
      if let data = try? Data(contentsOf: url) {
        self.imageState = .loading
        if let image = UIImage(data: data) {
          DispatchQueue.main.async {
            self.imageState = .loaded
            self.image = image
            success(image)
          }
        }
      }
    }
  }
}
