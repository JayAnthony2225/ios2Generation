//
//  MoviesTableViewCell.swift
//  FirstViewController
//
//  Created by Marco Cruz Velázquez on 7/3/23.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    var movieName : UILabel?
    var name: String?
    
    init(name: String) {
        super.init(style: .default, reuseIdentifier: nil)
        self.name = name
        self.backgroundColor = .white
        initUI()
        
    }
   
    func initUI(){
        movieName = UILabel(frame: CGRect(x: 20, y: 5, width: 250, height: 50))
        movieName?.text = name
        movieName?.textAlignment = .left
        
        self.addSubview(movieName!)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init has not been implemented")
    }
    

}
