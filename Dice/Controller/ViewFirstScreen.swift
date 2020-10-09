//
//  ViewFirstScreen.swift
//  Dice
//
//  Created by Аня Голубева on 09/10/2020.
//

import UIKit
import AVFoundation

class ViewFirstScreen: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var InputText: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var ReadTextButton: UIButton!
    
    @IBAction func PressedReadButton(_ sender: Any) {
        let text = self.InputText.text
        label.text = text
    }
    @IBAction func ShowDialog(_ sender: Any) {
        let uialert = UIAlertController(title: "Welcome", message: "Welcome to my channel. Thanks for watching. Click on Okay to continue", preferredStyle: UIAlertController.Style.alert)
            uialert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
           self.present(uialert, animated: true, completion: nil)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "juntos", ofType:"mp3")!

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        } catch {
            // couldn't load file :(
            print(error)
        }
    }
    
@IBAction func PlaySoundSome(_ sender: Any) {
        audioPlayer.play()
    }
    
@IBAction func GoToDashBoard(_ sender: Any) {
        performSegue(withIdentifier: "GoToDashBoard1", sender: self)
    }
}
