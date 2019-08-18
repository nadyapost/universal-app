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
  
  
  //  load images, take a callback to let imageView know there's new image ready to render (success:)
  func loadImage(success: @escaping (UIImage?)->()) {
    // return if imageState is set - we are loading or have already loaded an image
    if imageState != nil { return }
    // Image is broken treat it as loaded and set image to nil
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
