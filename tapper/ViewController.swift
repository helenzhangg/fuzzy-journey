//
//  ViewController.swift
//  tapper
//
//  Created by H on 5/11/16.
//  Copyright © 2016 H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    
    var maxTaps = 0
    var currentTaps = 0
    

    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTaps: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var numberTapsLeft: UILabel!
    
    @IBAction func onCoinTap(sender: UIButton!) {
        currentTaps++
        updateTabsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlay(sender: UIButton!) {
        
        if howManyTaps.text != nil && howManyTaps.text != ""{
            
            
            logoImg.hidden = true
            howManyTaps.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            numberTapsLeft.hidden = false
            
            maxTaps = Int(howManyTaps.text!)!
            currentTaps = 0
            
            updateTabsLabel()
        }
        
        
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTaps.text = nil

        logoImg.hidden = false
        howManyTaps.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true
        numberTapsLeft.hidden = true
        
    }

    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }

    func updateTabsLabel() {
        numberTapsLeft.text = " \(currentTaps) Taps"
        
    }
}

