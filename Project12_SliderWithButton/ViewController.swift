//
//  ViewController.swift
//  Project12_SliderWithButton
//
//  Created by Varun Yadav on 10/3/17.
//  Copyright © 2017 Varun Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var Array = [UIImage]()
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBOutlet weak var Slider1: UISlider!
    
    @IBAction func Slider(_ sender: UISlider) {
        
        var value = Int(sender.value)
        ImageView.image = Array[value]
        
    }
    
    
    @IBAction func NextButton(_ sender: Any) {
        
        Slider1.value += 1
        ImageView.image = Array[Int(Slider1.value)]
        
    }
    
    
    @IBAction func PrevButton(_ sender: Any) {
        Slider1.value -= 1
        ImageView.image = Array[Int(Slider1.value)]
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Array = [#imageLiteral(resourceName: "No1"),#imageLiteral(resourceName: "No2"),#imageLiteral(resourceName: "No3")]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

