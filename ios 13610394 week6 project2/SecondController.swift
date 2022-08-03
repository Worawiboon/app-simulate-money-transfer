//
//  SecondController.swift
//  ios 13610394 week6 project2
//
//  Created by Worawiboon on 14/9/2562 BE.
//  Copyright © 2562 Worawiboon. All rights reserved.
//

import UIKit

class SecondController: UIViewController {
    
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            if segue.identifier == "sendDataBack"{
             let firstVC = segue.destination as! FirstViewController
    
                firfirstVCstVC.dataPassBack = UITextField.text!
           }//end if
    
      }// end function prepare

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
