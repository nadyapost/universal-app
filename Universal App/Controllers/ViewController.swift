//
//  ViewController.swift
//  Universal App
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
  var movies: [MovieViewModel] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    fetchData()
  }
  
  func fetchData() {
    movies = [MovieViewModel(movie: Movie(title: "Some title", imageHref: "", rating: 1.1, releaseDate: ""))]
    
  }
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
    cell.movie = movies[indexPath.row]
    return cell
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movies.count
  }
}

