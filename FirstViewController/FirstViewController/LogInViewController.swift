//
//  LogInViewController.swift
//  FirstViewController
//
//  Created by Marco Cruz Velázquez on 6/28/23.
//

import UIKit

class LogInViewController: UIViewController {
    
    var titleLabel: UILabel?
    var emailTextField : UITextField?
    var password : UITextField?
    var buttonSignIn : UIButton?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        elementScreen()

    }
    
    func elementScreen(){
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width , height: 30 ))
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = .blue
        titleLabel?.font = UIFont(name: "Comic Sans", size: 25)
        titleLabel?.text = "LOG IN"
        view.addSubview(titleLabel!)
        

        emailTextField = UITextField(frame: CGRect(x: 50, y: 200, width: 200 , height: 40 ))
        emailTextField?.placeholder = "here email"
        emailTextField?.backgroundColor = .white
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        view.addSubview(emailTextField!)
        
        emailTextField = UITextField(frame: CGRect(x: 50, y: 300, width: 200 , height: 40 ))
        emailTextField?.placeholder = "here password"
        emailTextField?.backgroundColor = .white
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        view.addSubview(emailTextField!)
        
    }
}
