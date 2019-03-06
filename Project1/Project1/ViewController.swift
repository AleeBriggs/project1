//
//  ViewController.swift
//  Project1
//
//  Created by Alexandra Briggs on 2/25/19.
//  Copyright © 2019 Alexandra Briggs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var makeup:Int = 2
    var powder:Int = 2
    var blackheads:Int = 2
    var tzone:Int = 2
    var pores:Int = 2
    var total:Int = 0
    var name:String = ""

    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myAnswer: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func submit(_ sender: Any) {
        name = myName.text!
        
        
        total =  makeup + powder + blackheads + tzone + pores
        if(total >= 5 && total <= 7) {
            myAnswer.text = "\(name), you have dry skin."
            myImage.image = UIImage(named: "dry")
        }
        else if(total > 7 && total < 12){
            myAnswer.text = "\(name), you have combination skin."
            myImage.image = UIImage(named: "combo")
        }
        else if(total >= 12 && total <= 15){
            myAnswer.text = "\(name), you have oily skin."
            myImage.image = UIImage(named: "oily")
        }
        else{
            myAnswer.text = "error"
        }
    }
    
    
    @IBAction func mySlider1(_ sender: UISlider) {
        makeup = Int(sender.value)
        myName.resignFirstResponder()
        
        
    }
    
    
    @IBAction func mySlider2(_ sender: UISlider) {
        powder = Int(sender.value)
        myName.resignFirstResponder()
        
    }
    
    
    @IBAction func mySlider3(_ sender: UISlider) {
        blackheads = Int(sender.value)
        myName.resignFirstResponder()
        
    }
    
    
    @IBAction func mySlider4(_ sender: UISlider) {
        tzone = Int(sender.value)
        myName.resignFirstResponder()
        
    }
    
    
    @IBAction func mySlider5(_ sender: UISlider) {
        pores = Int(sender.value)
        myName.resignFirstResponder()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    }


}

