//
//  Movie.swift
//  Universal App
//
//  Created by Nadya Postriganova on 17/8/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import Foundation

struct Movie: Decodable {
  let title: String
  let imageHref: URL?
  let rating: Double?
  let releaseDate: String
}
