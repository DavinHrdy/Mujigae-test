//
//  EndViewController.swift
//  Mujigae test
//
//  Created by Davin Hardoyo on 6/26/19.
//  Copyright © 2019 Davin Hardoyo. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {
    
    // This variable carries over selected foods in form of array of integers
    var foodArrayPassedOver : [Int]?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Back button function, can be changed to anything else for future improvements
    @IBAction func backSegueButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
