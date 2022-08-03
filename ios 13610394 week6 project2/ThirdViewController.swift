//
//  ThirdViewController.swift
//  ios 13610394 week6 project2
//
//  Created by Worawiboon on 14/9/2562 BE.
//  Copyright © 2562 Worawiboon. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var delegate : CanReceive?
    
    var data = ""
    
    
    @IBOutlet weak var showComplete: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showComplete.text = data
        // Do any additional setup after loading the view.
       
        
        if let valueLable = showComplete.text {
            var intValue = 0
            intValue = (valueLable as NSString).integerValue
            
            if(intValue<=10000 && intValue>=1){
                showComplete.text = "COMPLETE"
            }
            else {
                
                showComplete.text = "FAIL"
            }
            
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
