//
//  ViewController.swift
//  FirstViewController
//
//  Created by Marco Cruz Velázquez on 6/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    var newView : UIView?
    var firePlayImage : UIImageView?
    var newLabel : UILabel?
   // var newBUtton1 : UIButton?
    var signInButton : UIButton?
    var signUpButton : UIButton?
    var newImage : UIImageView?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var myColor = UIColor(red: 100/255, green: 30/255, blue: 22/255, alpha: 1)
    var myColor2 = UIColor(red: 33/255, green: 24/255, blue: 22/255, alpha: 1)
    var bottonColor1 = UIColor(red: 238/255, green: 207/255, blue: 124/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = myColor
        initElements()
        
    }
    
    func initElements(){
        // esta funcion ayuda a inicializar
        newView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        newView?.backgroundColor = myColor2
        view.addSubview(newView!)
        
        
/*
        //Step 1 : inicializar variable
        newLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 250, height: 250))
        //Step 2: config de atributos
        newLabel?.textColor = .white
        newLabel?.text = "FIREPLAY :) "
        newLabel?.font = UIFont(name: "Arial Bold", size: 28)
        // Step 3: agregar ala vista
        view.addSubview(newLabel!)
 
        Este UILabel sera remplazado por el UIImageView de abajo :)
 
*/
        firePlayImage = UIImageView()//  (frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        firePlayImage?.image = UIImage(named: "image2")
        firePlayImage?.layer.masksToBounds = true
        firePlayImage?.contentMode = .scaleAspectFit
        view.addSubview(firePlayImage!)
        
        firePlayImage?.translatesAutoresizingMaskIntoConstraints = false
        firePlayImage?.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        firePlayImage?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        firePlayImage?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        
        
        signUpButton = UIButton(frame: CGRect(x: 100, y: 350, width: 200, height: 50))
        signUpButton?.backgroundColor = bottonColor1
        signUpButton?.layer.cornerRadius = 10
        signUpButton?.titleLabel?.textColor
        signUpButton?.setTitle("Sign up", for: .normal)
        signUpButton?.addTarget(self, action: #selector(goToSingUpScreen), for: .touchUpInside)
        view.addSubview(signUpButton!)
        
        
        
        signInButton = UIButton(frame: CGRect(x: 100, y: 450, width: 200, height: 50))
        signInButton?.backgroundColor = .black
        signInButton?.layer.cornerRadius = 10
        signInButton?.setTitle("Sign in", for: .normal)
        signInButton?.addTarget(self, action: #selector(goToSignInScreen), for: .touchUpInside)
       // signInButton?.setImage(UIImage(named: "image1"), for: .normal)
        view.addSubview(signInButton!)

        
        newImage = UIImageView(frame: CGRect(x: 100, y: 550, width: 200, height: 200))
        newImage?.image = UIImage(named: "image1")
        newImage?.layer.masksToBounds = true
        newImage?.contentMode = .scaleAspectFit
        view.addSubview(newImage!)
        
    }
    
   @objc func goToSignInScreen(){
        print("signInButton pressed")
       let signInVC = LogInViewController()
       //signInVC.modalPresentationStyle = .fullScreen
       present(signInVC, animated: true)
       
    }
    
    @objc func goToSingUpScreen(){
        print("you are going to Sign Up Screen")
        let signUpVC = SignUpViewController()
        present(signUpVC, animated: true)
        
        
    }
}
