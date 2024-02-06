//
//  MovieCell.swift
//  Flixster Pt. 2
//
//  Created by Joshua Akhimiemona on 2/6/24.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.title
        movieDescription.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path.absoluteString)!, into: movieImageView)
    }
    

}
