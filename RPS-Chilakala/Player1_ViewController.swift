//
//  Player1_ViewController.swift
//  RPS-Chilakala
//
//  Created by Chilakala Krishna Reddy,Darshan Reddy on 2/19/18.
//  Copyright © 2018 Chilakala Krishna Reddy,Darshan Reddy. All rights reserved.
//

import UIKit

class Player1_ViewController: UIViewController {

    @IBOutlet weak var Player1_TF: UITextField!
    
    
    @IBOutlet weak var Player1_RefBar_Title: UITabBarItem!
    @IBAction func Player1_Edit_TF(_ sender: Any) {
        
    Player1_RefBar_Title.title = "\(Player1_TF.text ?? "Player1")"
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if(AppDelegate.model.Player1Choice == .None){
            SelectionLBL.text = "Please make a selection"
            rb.isEnabled = true
            sb.isEnabled = true
            pb.isEnabled = true
            spb.isEnabled = true
            lb.isEnabled = true
        }else{
            SelectionLBL.text = "Your selection is \(AppDelegate.model.Player1Choice)"
            rb.isEnabled = false
            sb.isEnabled = false
            pb.isEnabled = false
            spb.isEnabled = false
            lb.isEnabled = false
        }
    }
    @IBOutlet weak var rb: UIButton!
    
    @IBOutlet weak var pb: UIButton!
    
    @IBOutlet weak var lb: UIButton!
    @IBOutlet weak var sb: UIButton!
    @IBOutlet weak var SelectionLBL: UILabel!
    @IBOutlet weak var spb: UIButton!
    
    @IBAction func RockBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer1(pick: .Rock)
        SelectionLBL.text = "You selection is Rock"
        
    }
    
   
    @IBAction func PaperBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer1(pick: .Paper)
        SelectionLBL.text = "You selection is Paper"
    }
    
    @IBAction func ScissorBTN(_ sender: Any) {
        
        AppDelegate.model.ChoosePlayer1(pick: .Scissor)
        SelectionLBL.text = "You selection is Scissor"
        
    }
    
    @IBAction func SpockBTN(_ sender: Any) {
        AppDelegate.model.ChoosePlayer1(pick: .Spock)
        SelectionLBL.text = "You selection is Spock"
    }
    
    
    
    @IBAction func LizardBTN(_ sender: Any) {
        AppDelegate.model.ChoosePlayer1(pick: .Lizard)
        SelectionLBL.text = "You selection is Lizard"
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
