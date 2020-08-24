//
//  ViewController.swift
//  TaskPart6
//
//  Created by miyazawaryohei on 2020/08/24.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var sliderValueLabel: UILabel!
    
    @IBOutlet private var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        upDate()
    }
    
    @IBAction func sliderButton(_ sender: Any) {
        print(slider.value)
    }
    
    @IBAction func check(_ sender: Any) {
        let sliderValue = Int(slider.value)
        if Int(sliderValue) == Int(sliderValueLabel.text!){
            alert(message: "あたり！\nあなたの値:\(sliderValue)")
        }else{
            alert(message:  "はずれ！\nあなたの値:\(sliderValue)")
        }
        
    }
    
    
    func alert(message:String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let challenge = UIAlertAction(title: "再挑戦", style: .default, handler:{(Action:UIAlertAction!) -> Void in self.upDate()})
        alert.addAction(challenge)
        present(alert,animated: true, completion: nil)
        
    }
    
    
    private func upDate(){
        sliderValueLabel.text = String(arc4random_uniform(101))
    }
    
}

