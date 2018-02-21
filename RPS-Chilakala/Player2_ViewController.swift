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
    
    
    @IBOutlet weak var SelectionLBL: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        if(AppDelegate.model.Player2Choice == .None){
            SelectionLBL.text = "Please make a selection"
        }else{
            SelectionLBL.text = "Your selection is \(AppDelegate.model.Player2Choice)"
        }
    }
    
    @IBAction func RockBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer2(pick: .Rock)
        SelectionLBL.text = "Your selection is Rock"
    }
    
    
    @IBAction func PaperBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer2(pick: .Paper)
        SelectionLBL.text = "Your selection is Paper"
    }
    
    
    @IBAction func ScissorBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer2(pick: .Scissor)
        SelectionLBL.text = "Your selection is Scissor"
    }
    
    @IBAction func SpockBTN(_ sender: Any) {
        AppDelegate.model.ChoosePlayer2(pick: .Spock)
        SelectionLBL.text = "Your selection is Spock"
    }
    
    
    @IBAction func LizardBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer2(pick: .Lizard)
        SelectionLBL.text = "Your selection is Lizard"    }
    
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
