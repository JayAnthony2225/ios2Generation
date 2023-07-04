//
//  MoviesViewController.swift
//  FirstViewController
//
//  Created by Marco Cruz Velázquez on 6/30/23.
//

import UIKit

class MoviesViewController: UIViewController {
    
    var tableView : UITableView?
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var dataSource : MovieObj?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
        getData()
        

       
    }
    
    func initUI(){
        tableView = UITableView(frame: CGRect(x: 10, y: 20, width: width - 50, height: height - 50))
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        
    }

    func getData(){
        
        let movie1 = Movie(name: "Pepe el Toro", description: "a lovely true history", cover: "imagePepe", director: "Mel Gipson", year: 2000, duration: 60.3)
        let movie2 = Movie(name: "Chuky", description: "a terror history", cover: "imageChuky", director: "Mel Gup 2 ", year: 2001, duration: 59.0)
        let movie3 = Movie(name: "El Horfanato", description: "a history of special need childs", cover: "imageChild", director: "Gillermo del toro ", year: 2006, duration: 90.04)
        
        let warMovi = Movie(name: "Rescatando al soldado Ryan", description: "Pelicula de Guerra", cover: "Ryan", director: "Mark Panigua", year: 2005, duration: 120.8)
        let warMovi2 = Movie(name: "Fury", description: "Un comandante de tanque deberá tomar decisiones muy difíciles mientras él y su equipo luchan en Alemania en 1945.", cover: "Ryan", director: "Phil Harvey", year: 2014, duration: 130)
        
        let movie5 = Movie(
            name: "El Castillo Ambulante",
            description: "Una historia de amor y fantasia",
            cover: "castle",
            director: "Hayao Miyazaki",
            year: 1999,
            duration: 119)
        
        let movie6 = Movie(name: "Your Name", description: "Dos adolescentes comparten una profunda y mágica conexión al descubrir que están intercambiando cuerpos”", cover: "your_name", director: "Makoto Shinkai", year: 2018, duration: 107)
        
        
        let actionMovie1 = Movie(
            name: "Fast and furious",
            description: "Dominic Toretto to bring down a heroin importer by infiltrating his operation.",
            cover: "fastAndFuriousImage",
            director: "Justin Lin",
            year: 2009,
            duration: 107)
        
        let actionMovie2 = Movie(
            name: "Extraction",
            description: "Black market mercenary embarks on the most deadly extraction of his career ",
            cover: "extractionImage",
            director: "Sam Hargrave",
            year: 2020,
            duration: 116)
        
        
        let categoryTerror = Category(name: "Terror", movies: [movie1,movie2, movie3])
        let categoryAction = Category(name: "Action", movies: [warMovi, warMovi2,actionMovie1, actionMovie2])
        let animation = Category(name: "Animation", movies: [movie5, movie6])
        
        let moviesBD = MovieObj(category: [categoryAction, categoryTerror, animation])
        
        dataSource = moviesBD
        
        
    }
    
    

}




extension MoviesViewController : UITableViewDelegate, UITableViewDataSource {
    

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataSource?.category?[section].movies?.count ?? 0
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let movie = dataSource?.category?[indexPath.section].movies?[indexPath.row]
            let cell = MoviesTableViewCell(name: movie?.name ?? "")
            return cell
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return dataSource?.category?.count ?? 0 // Operador de coalecensia
        }
    
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataSource?.category?[section].name ?? ""
    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("I am in the  categoria \(indexPath.section) and the row \(indexPath.row)")
    }
       

    }






