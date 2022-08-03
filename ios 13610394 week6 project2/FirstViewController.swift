//
//  FirstViewController.swift
//  ios 13610394 week6 project2
//
//  Created by Worawiboon on 14/9/2562 BE.
//  Copyright © 2562 Worawiboon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive{
    
 
    @IBOutlet weak var textField: UITextField!
    

    @IBOutlet weak var textFieldBank: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
  
    
    
    @IBAction func moneyBtPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
  
    override func prepare (for segue: UIStoryboardSegue, sender: Any? ){
        
        if segue.identifier == "sendDataForwards"{
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            secondVC.delegate = self
            
            let secondVC1 = segue.destination as! SecondViewController
            
               secondVC1.dataShowBank = textFieldBank.text!
            
            
            
        }//end if
    }//end func prepare
    
    func dataReceived(dataFromProtocol: String) {
        
    }
}

