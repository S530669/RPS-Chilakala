//
//  Result_ViewController.swift
//  RPS-Chilakala
//
//  Created by Chilakala Krishna Reddy,Darshan Reddy on 2/19/18.
//  Copyright © 2018 Chilakala Krishna Reddy,Darshan Reddy. All rights reserved.
//

import UIKit

class Result_ViewController: UIViewController {
    
    
    
    @IBOutlet weak var ResultLBL: UILabel!
    
    @IBOutlet weak var Player1LBL: UILabel!
    @IBOutlet weak var Player2LBL: UILabel!
    
    @IBOutlet weak var PlayerResponseLBL: UILabel!
    
    
    
    
    
    
    @IBAction func ResetBTN(_ sender: Any) {
        AppDelegate.model.reset()
        ResultLBL.text = "Make your selections on the other tabs"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
