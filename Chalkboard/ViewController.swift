//
//  ViewController.swift
//  Chalkboard
//
//  Created by Brittany.Waters on 4/11/19.
//  Copyright © 2019 Brittany.Waters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var chalkTextField:[String] = ["\n"]
    
//    func chalkboardText(  tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
//    }
    
//////////////////////////// OUTLETS ////////////////////////////
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBOutlet weak var chalkboardTextField: UITextField!
    
    @IBOutlet weak var chalkboardText: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//////////////////////////// ACTIONS ////////////////////////////
    
    @IBAction func writePressed(_ sender: Any) {
        var myNewString:String = ""
        if chalkboardTextField.text != "" {
            for randomthing in 1...Int(sliderOutlet.value) {
                chalkTextField.append(chalkboardTextField.text ?? "blah")
                myNewString += chalkTextField[randomthing] + "\n"
                
            }
        
           chalkboardText.text = myNewString
        
        }
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        //print(Int(sliderOutlet.value))
        sliderLabel.text = String(Int(sliderOutlet.value))
    }
    
    
}

