//
//  Player2_ViewController.swift
//  RPS-Chilakala
//
//  Created by Chilakala Krishna Reddy,Darshan Reddy on 2/19/18.
//  Copyright © 2018 Chilakala Krishna Reddy,Darshan Reddy. All rights reserved.
//

import UIKit

class Player2_ViewController: UIViewController {

    @IBOutlet weak var Player2_TF: UITextField!
    @IBOutlet weak var Player2_RefBar_Title: UITabBarItem!
    
    @IBAction func Player_Edit_TF(_ sender: Any) {
        Player2_RefBar_Title.title = "\(Player2_TF.text ?? "Player 2")"
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
