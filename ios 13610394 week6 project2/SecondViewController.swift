//
//  SecondViewController.swift
//  ios 13610394 week6 project2
//
//  Created by Worawiboon on 14/9/2562 BE.
//  Copyright © 2562 Worawiboon. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(dataFromProtocol:String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    var data = ""
    var dataShowBank = ""
    
    @IBOutlet weak var labelBank: UILabel!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
        
        if dataShowBank == "1"{
            labelBank.text = "KTB"
            view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }
        else if dataShowBank == "2"{
            labelBank.text = "KBank"
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
        else if dataShowBank == "3"{
            labelBank.text = "SCB"
            view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        }
        else {
            labelBank.text = "FAIL"
        }
       
        // Do any additional setup after loading the view.
    
    
    }
   
    @IBAction func BtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwardsSec", sender: self)
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "sendDataForwardsSec"{
            let thirdVC = segue.destination as! ThirdViewController
            
            thirdVC.data = label.text!
        }
    }
}
