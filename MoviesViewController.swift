//
//  ViewController.swift
//  Flixster Pt. 2
//
//  Created by Joshua Akhimiemona on 2/6/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "TrackCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        // Get the track that corresponds to the table view row
        let movie = movies[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: movie)

        // return the cell for display in the table view
        return cell
    }
    
    
    var movies: [Movie] = []
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        movies = Movie.mockMovies
//        print(movies)
        
        // Create a URL for the request
        // In this case, the custom search URL you created in in part 1
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=5c5442a930e1d14983aed9deeb6b955f")!

        // Use the URL to instantiate a request
        let request = URLRequest(url: url)
        let movie = URLSession.shared.dataTask(with: request) { data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            do {
//                let jsonDictionary = try JSONSerialization.jsonObject(with: data) as? [String: Any]
//                print(jsonDictionary!)
                
                // Create a JSON Decoder
                let decoder = JSONDecoder()
                

                // Use the JSON decoder to try and map the data to our custom model.
                // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                let response = try decoder.decode(MoviesResponse.self, from: data)

                // Access the array of tracks from the `results` property
                let movies = response.results
                
                // Execute UI updates on the main thread when calling from a background callback
                DispatchQueue.main.async {

                    // Set the view controller's tracks property as this is the one the table view references
                    self.movies = movies

                    // Make the table view reload now that we have new data
                    self.tableView.reloadData()
                }
                
                
                print("✅ \(movies)")
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        movie.resume()
        print("👋 Below the closure")
        
        
        tableView.dataSource = self
    }



}

