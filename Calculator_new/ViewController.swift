//
//  ViewController.swift
//  Calculator_new
//
//  Created by Шынгыс on 2/22/20.
//  Copyright © 2020 Шынгыс. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0
    var performingMath = false;
    var operation = 0;
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 19
        {
            previousNumber=Double(label.text!)!
            if sender.tag == 15 //divide
            {
                label.text = "/"
            }
            else if sender.tag==16 //multiply
            {
                label.text = "X"
            }
            else if sender.tag==17 //minus
            {
                label.text = "-"
            }
            else if sender.tag==18 //plus
            {
                label.text = "+"
            }
            
            
            
            operation=sender.tag
            performingMath=true;
        }
        else if sender.tag == 19
        {
             if operation == 15
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 16
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 17
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 18
            {
                label.text = String(previousNumber + numberOnScreen)
            }
             else if operation == 20
             {
                label.text=String((previousNumber*numberOnScreen)/100)
            }
            else if operation == 12
             {
                label.text = String(pow(previousNumber,numberOnScreen))
            }
            else if operation == 14
             {
                label.text=String(sqrt(previousNumber))
            }
        }
        else if sender.tag == 11
        {
            label.text = "" ;
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
   

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
         if performingMath==true{
            label.text = String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
            performingMath=false
        }
         else   {
           
            label.text=label.text! + String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

