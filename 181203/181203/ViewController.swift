//
//  ViewController.swift
//  181203
//
//  Created by 石場清子 on 2018/12/03.
//  Copyright © 2018 石場清子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shintyo: UITextField!

    @IBOutlet weak var taiju: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func keisan(_ sender: UIButton) {

        let meterShintyo = Double(shintyo.text!)! / 100.0
        let keisanTaiju = Double(taiju.text!)
        var bmi = 100 * keisanTaiju! / meterShintyo / meterShintyo
        bmi = bmi.rounded() / 100
        view.endEditing(true)
        
        result.text = "あなたのbmiは、" + String(bmi) + "です。"
        

    }
    
    @IBAction func reset(_ sender: Any) {
        shintyo.text = ""
        taiju.text = ""
        result.text = ""
    }
    
    

}
    





