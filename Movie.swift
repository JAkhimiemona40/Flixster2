//
//  Movies.swift
//  Flixster Pt. 2
//
//  Created by Joshua Akhimiemona on 2/6/24.
//

import Foundation

// Movies model struct
struct Movie: Decodable{
    let title: String
    let overview: String
    let poster_path: URL
    
    // Detail Properties
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}

struct MoviesResponse: Decodable{
    //let resultCount: Int
    let results: [Movie]
}

//extension Movie {
//    /// An array of mock tracks
//    static var mockMovies: [Movie]  = [
//        Movie(titleName: "Marshall",
//              description: "Directed by Reginald Hudlin, Marshall focuses on one of Thurgood Marshall's early cases before he became the first African American Supreme Court Justice. Chadwick Boseman stars as Thurgood Marshall, who was then a young lawyer for the NAACP. The film depicts Marshall's defense of Joseph Spell, a black chauffeur accused of assaulting and raping his employer, a wealthy white woman. Set against the backdrop of racial tensions in the 1940s, Marshall portrays Marshall's tenacity, legal brilliance, and commitment to justice in the face of systemic prejudice and injustice. The movie offers a compelling glimpse into Marshall's early career and his relentless pursuit of civil rights and equality under the law.",
//              artworkUrl100: URL(string:"https://play-lh.googleusercontent.com/R9feh-eou5OYzzOO1HwT_2HykhaNDdEt7vj-0Bg4zST9wNOw4u24L9IKwJkHqRj1fWg=w240-h480-rw")!, backdropImage: URL(string:"https://ew.com/thmb/7tYi4HtQkRjcQ8-haYWfK3G1EiM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/000262373hr-2000-dc18f8a357124370b04bdd1e7525eccd.jpg")!, voteAverage: "7.8", voteCount: "25000", popularity: "85%"),
//        
//        Movie(titleName: "The Social Network",
//              description: "Directed by David Fincher and written by Aaron Sorkin, The Social Network provides a dramatized account of the founding and early years of Facebook, focusing primarily on Mark Zuckerberg's role in its creation. Jesse Eisenberg portrays Zuckerberg as a brilliant but socially awkward Harvard student who launches what would become the world's largest social networking platform. The film explores themes of ambition, betrayal, and the complexities of friendship and business relationships as Zuckerberg navigates the rapid growth of Facebook while facing legal disputes and personal conflicts. The Social Network offers a compelling portrayal of the technology industry and the human drama behind one of its most influential figures."
//              ,
//              artworkUrl100: URL(string: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p8078163_p_v8_ad.jpg")!, backdropImage: URL(string:"https://static01.nyt.com/images/2020/10/05/arts/05social-network01/05social-network01-superJumbo-v3.jpg")!, voteAverage: "8.5", voteCount: "150000", popularity: "90%"),
//        
//        Movie(titleName: "Ali",
//              description: "Directed by Michael Mann, Ali stars Will Smith in the titular role and chronicles the life and career of the legendary boxer Muhammad Ali. The film explores Ali's rise to prominence as a heavyweight champion, his conversion to Islam, his refusal to serve in the Vietnam War, and his epic bouts with rivals such as Sonny Liston and Joe Frazier. Ali delves into the complexities of Ali's persona outside the ring, his political activism, and his personal struggles, offering a compelling portrayal of one of the most iconic figures in sports history."
//              ,
//              artworkUrl100: URL(string: "https://m.media-amazon.com/images/I/51ZJb4kLnlL.jpg")!, backdropImage: URL(string: "https://cdn.vox-cdn.com/thumbor/vKdEgiMXvZxwgk_9XpMVyewxfDs=/131x0:2231x1575/1200x800/filters:focal(131x0:2231x1575)/cdn.vox-cdn.com/uploads/chorus_image/image/55998335/1_m7WI_1rMEUX0tBeyo62S8Q.0.jpeg")!, voteAverage: "7.9", voteCount: "80000", popularity: "88%"),
//        
//        Movie(titleName: "Selma", description: "Directed by Ava DuVernay, Selma chronicles the historic 1965 voting rights marches from Selma to Montgomery, led by Dr. Martin Luther King Jr. (played by David Oyelowo), amidst the civil rights movement in the United States. The film portrays King's strategic activism and the challenges faced by activists in their quest for racial equality and voting rights, culminating in the passage of the Voting Rights Act of 1965.."
//              , artworkUrl100: URL(string: "https://upload.wikimedia.org/wikipedia/en/8/8f/Selma_poster.jpg")!, backdropImage: URL(string: "https://cdn.vox-cdn.com/thumbor/jWvCwUS-mNsQBAC4nr58JhWBQHs=/0x0:3072x2304/1400x1400/filters:focal(0x0:3072x2304):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/44396572/sel-08560.0.0.jpg")!, voteAverage: "8.2", voteCount: "60000", popularity: "85%"),
//        
//        Movie(titleName: "42", description: "Directed by Brian Helgeland, 42 tells the inspiring true story of Jackie Robinson, the first African American to play Major League Baseball in the modern era. Chadwick Boseman stars as Robinson, while Harrison Ford portrays Branch Rickey, the Brooklyn Dodgers executive who signed him. The film follows Robinson's journey as he faces immense racial prejudice and discrimination both on and off the field, breaking barriers and paving the way for future generations of black athletes. 42 celebrates Robinson's courage, resilience, and pivotal role in the history of American sports and civil rights.", artworkUrl100: URL(string: "https://upload.wikimedia.org/wikipedia/en/0/0f/42_film_poster.jpg")!, backdropImage: URL(string: "https://media.npr.org/assets/img/2013/04/10/42-fp-0292_sq-d945b7064bbff0f21cdc6895b95471f94805a1a9-s800-c85.jpg")!, voteAverage: "8.0", voteCount: "70000", popularity: "82%"),
//    ]
//
//}

func formattedMovieVoteCount(with voteCount: Int) -> String{
    return "\(voteCount) Votes"
}

func formattedMovieVoteAvg(with voteAvg: Double) -> String{
    return "\(voteAvg) Vote Average"
}

func formattedMovieVotePop(with pop: Double) -> String{
    return "\(pop) Popularity"
}
