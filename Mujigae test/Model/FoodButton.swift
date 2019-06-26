//
//  FoodButton.swift
//  Mujigae test
//
//  Created by Davin Hardoyo on 6/26/19.
//  Copyright © 2019 Davin Hardoyo. All rights reserved.
//

import UIKit

@IBDesignable extension UIView {
    @IBInspectable var borderColor:UIColor? {
        set {
            layer.borderColor = newValue!.cgColor
        }
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
    @IBInspectable var borderWidth:CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius:CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}

// Diagnostics:
//let buttonSelectTextColor = UIColor(red: 235.0/255.0, green: 161.0/255.0, blue: 161.0/255.0, alpha: 1.0)
//let buttonUnselectTextColor = UIColor(red: 170.0/255.0, green: 170.0/255.0, blue: 170.0/255.0, alpha: 1.0)
//
//let buttonSelectBorderColor = UIColor(red: 235.0/255.0, green: 161.0/255.0, blue: 161.0/255.0, alpha: 1.0)
//let buttonUnselectBorderColor = UIColor(red: 217.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)

class FoodButton: UIButton {

    var isOn = false
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        addTarget(self, action: #selector(FoodButton.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        let textColor = bool ? UIColor(named: "buttonSelectTextColor") : UIColor(named: "buttonUnselectTextColor")
        
        let borderColor = bool ? UIColor(named: "buttonSelectBorderColor") : UIColor(named: "buttonUnselectBorderColor")
        
        setTitleColor(textColor, for: .normal)
        layer.borderColor = borderColor?.cgColor
    }
    
    

}
