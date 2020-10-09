//
//  HomeViewController.swift
//  Dice
//
//  Created by Аня Голубева on 09/10/2020.
//

import UIKit
import FirebaseAuth


class HomeViewController: UIViewController {

    @IBOutlet weak var LogOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func LogOutNow(_ sender: Any) {
        do {
               try Auth.auth().signOut()
           }
        catch let signOutError as NSError {
               print ("Error signing out: %@", signOutError)
           }
           
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let initial = storyboard.instantiateInitialViewController()
           UIApplication.shared.keyWindow?.rootViewController = initial
    }
    
}
