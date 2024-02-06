//
//  DetailViewController.swift
//  Flixster Pt. 2
//
//  Created by Joshua Akhimiemona on 2/6/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieBackground: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieVoteAvg: UILabel!
    @IBOutlet weak var movieVoteCount: UILabel!
    @IBOutlet weak var moviePop: UILabel!
    @IBOutlet weak var testingDescript: UITextView!
    //@IBOutlet var movieDescript: UILabel!

        

        // Do any additional setup after loading the view.
        
        // A property to store the track object.
        // We can set this property by passing along the track object associated with the track the user tapped in the table view.
        var poster: Poster!
        //var movie: Movie!

        override func viewDidLoad() {
            super.viewDidLoad()
            
                // Load the image located at the `artworkUrl100` URL and set it on the image view.
//            Nuke.loadImage(with: URL(string: "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/" +
            
            Nuke.loadImage(with: URL(string: "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/" + poster.backdrop_path.absoluteString)!, into: movieBackground)

            // Set labels with the associated track values.
            movieTitle.text = poster.title
            movieVoteAvg.text = formattedMovieVoteAvg(with: poster.vote_average)
            movieVoteCount.text = formattedMovieVoteCount(with: poster.vote_count)
            moviePop.text = formattedMovieVotePop(with: poster.popularity)
            testingDescript.text = poster.overview

        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
