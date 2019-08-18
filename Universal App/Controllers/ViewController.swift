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
    let moviesUrl = "https://www.dropbox.com/s/q1ins5dsldsojzt/movies.json?dl=1"
    guard let url = URL(string: moviesUrl) else { return }
    URLSession.shared.dataTask(with: url) { (data, response, err) in
      guard let data = data else { return }
      do {
        let moviesResponse = try JSONDecoder().decode(MoviesResponse.self, from: data)
        self.movies = moviesResponse.movies.map {(movie) in MovieViewModel(movie: movie)}
        DispatchQueue.main.async {
          self.tableView.reloadData()
        }
       
      } catch let parsingError {
        print(parsingError)
      }
    }.resume()
    
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

