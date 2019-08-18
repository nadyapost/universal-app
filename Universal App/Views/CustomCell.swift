//
//  CustomCell.swift
//  Universal App
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
  @IBOutlet var movieImage: UIImageView!
  @IBOutlet var label: UILabel!

  var movie: MovieViewModel! {
    didSet {
      label.text = movie.movieTitle
      movieImage.image = movie.image
      // load image and reload imageView when ready
      movie.loadImage() { (image) in
        self.movieImage.image = image
      }
    }
  }
}
