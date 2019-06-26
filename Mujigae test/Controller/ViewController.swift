//
//  ViewController.swift
//  Mujigae test
//
//  Created by Davin Hardoyo on 6/26/19.
//  Copyright © 2019 Davin Hardoyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var title1Text: UILabel!
    @IBOutlet weak var subtitle1Text: UILabel!
    
    var foodArray:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func foodSelected(_ sender: UIButton) {
    
        // Diagnostics only:
        ////print(sender.tag)
        
        if let index = foodArray.firstIndex(of: sender.tag) {
            foodArray.remove(at: index)
        } else {
            foodArray.append(sender.tag)
        }
        
    }
    
    @IBAction func doneButtonAction(_ sender: Any) {
        
        // change this function to expand capability (connect online?). For now it is only reciting selected foods.
        
        foodArray.sort()
        
        for food in foodArray {
            print(food)
        }
        
        performSegue(withIdentifier: "goToEndScreen", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEndScreen" {
            let destinationViewController = segue.destination as! EndViewController
            
            destinationViewController.foodArrayPassedOver = foodArray
        }
    }
    
}

