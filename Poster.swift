//
//  Poster.swift
//  Flixster Pt. 2
//
//  Created by Joshua Akhimiemona on 2/6/24.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
    
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
    let title: String
    let overview: String
}
