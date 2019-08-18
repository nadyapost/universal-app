//
//  DetailViewController.swift
//  UniversalApp
//
//  Created by Nadya Postriganova on 18/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  var movie: MovieViewModel!
  
  @IBOutlet var movieImage: UIImageView!
  @IBOutlet var movieTitle: UILabel!
  @IBOutlet var releaseDate: UILabel!
  @IBOutlet var raiting: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
 
      movieTitle.text = movie.movieTitle
      movieImage.image = movie.image
      releaseDate.text = movie.releaseDate
      raiting.text = movie.rating
      
    }
  

}
