//
//  ViewController.swift
//  tapper
//
//  Created by Mehmet Eroğlu on 2.02.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import UIKit
//commit this app
class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapslbl: UILabel!
    
    
    @IBAction func onCoinTapped (sender: UIButton!){
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    
    @IBAction func onPlayBtnPressed(sender : UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
            logoImg.isHidden = true
            howManyTapsTxt.isHidden = true
            playBtn.isHidden = true
            
            tapBtn.isHidden = false
            tapslbl.isHidden = false

            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTapsLbl()
        }
        
    }
    
    
    func restartGame () {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.isHidden = false
        howManyTapsTxt.isHidden = false
        playBtn.isHidden = false
        
        tapBtn.isHidden = true
        tapslbl.isHidden = true
    }
    
    
    func isGameOver () -> Bool {
        if currentTaps >= maxTaps {
            return true
        }else {
            return false
        }
    }

    
    func updateTapsLbl () {
        tapslbl.text = "\(currentTaps) Taps"
    }

    
    
    

}

