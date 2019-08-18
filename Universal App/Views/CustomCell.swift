//
//  CustomCell.swift
//  Universal App
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
  
  var movie: MovieViewModel! {
    didSet {
      label.text = movie.movieTitle
      movieImage.image = movie.image
    }
  }

  @IBOutlet var movieImage: UIImageView!
  @IBOutlet var label: UILabel!
  

}
