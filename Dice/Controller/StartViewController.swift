//
//  StartViewController.swift
//  Dice
//
//  Created by Аня Голубева on 09/10/2020.
//

import UIKit
import FirebaseAuth


class StartViewController: UIViewController {

    @IBOutlet weak var GoToSignup: UIButton!
    @IBOutlet weak var GoToLogin: UIButton!
    
    override func viewDidAppear(_ animated: Bool){
     super.viewDidAppear(animated)
     if Auth.auth().currentUser != nil {
       self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
    }
    }
  

    @IBAction func GoToSingUpScreen(_ sender: Any) {
        performSegue(withIdentifier: "GoToSingUpScreenView", sender: self)
    }
    @IBAction func GoToLoginScreen(_ sender: Any) {
        performSegue(withIdentifier: "GoToLoginScreenView", sender: self)
    }
}
