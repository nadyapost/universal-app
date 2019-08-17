//
//  MoviesResponse.swift
//  UniversalApp
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import Foundation

struct MoviesResponse: Decodable {
  let title: String
  let movies: [Movie]
}
