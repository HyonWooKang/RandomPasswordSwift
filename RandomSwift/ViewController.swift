//
//  ViewController.swift
//  RandomSwift
//
//  Created by EnGiS_Spencer on 2023/08/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomAlphabetLabel: UILabel!
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createAlphabePasswordButtonAction(_ sender: Any) {
        
        self.randomAlphabetLabel.text = ""
        
        let combinedArray = alphabet + numbers
        
        for i in 0..<6 {
            password += combinedArray.randomElement()!
        }
        
        self.randomAlphabetLabel.text = self.password
    }
}

