//
//  ViewController.swift
//  StoreKit-Purchases-Example
//
//  Created by Kieron Cairns on 26/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnChangeBackground: UIButton!
    @IBOutlet weak var labelDescription: UILabel!
    
    
    let items = ["Cheeky 😅", "Oi Oi 😉", "Lar de dar 😘", "Woahh! 😲", "Spicy 🌶"]
    
    let colourArray = [UIColor.red, UIColor.green, UIColor.blue]
    
    let purchasdColourArray = [UIColor.red, UIColor.green, UIColor.blue, UIColor.yellow, UIColor.orange, UIColor.systemIndigo, UIColor.systemMint]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelDescription.text = "Hello World 😊"
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

    @IBAction func actionChangeBackground(_ sender: Any) {
        print("Change Background Func Hit")
        
     
        self.view.backgroundColor =  colourArray.randomElement()
                
                let randomInt = Int.random(in: 0..<5)
                print(self.items[randomInt])
                print(randomInt)
                self.labelDescription.text = items.randomElement()
    }
}
    

