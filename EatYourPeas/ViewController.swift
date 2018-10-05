//
//  ViewController.swift
//  EatYourPeas
//
//  Created by Chang Sophia on 2018/10/3.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVPlayer?
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var mom: UIButton!
    @IBOutlet weak var iDontLikePeas: UILabel!
    @IBOutlet weak var peaSlider: UISlider!
    @IBOutlet weak var prize: UILabel!
    @IBOutlet weak var ifYouEatPeas: UILabel!
    
  
    var prizes = ["8 chocolate factories", "3 zebras", "12 puddings","5 superlands", "17 swimming pools", "6 rockets", "2 baby elephants", "15 new bikes", "16 supermarkets"]
    

    
    @IBAction func momButtonPressed(_ sender: UIButton) {
       
        let newPrizes = prizes.shuffled()[0...2]
        let answerIndex = Int.random(in: 0...2)
        
        prize.text = newPrizes[answerIndex]
        let speech = AVSpeechUtterance(string: prize.text!)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
        
        number1.setBackgroundImage(UIImage(named: newPrizes[0]), for: UIControl.State.normal)
        number2.setBackgroundImage(UIImage(named: newPrizes[1]), for: UIControl.State.normal)
        number3.setBackgroundImage(UIImage(named: newPrizes[2]), for: UIControl.State.normal)
        iDontLikePeas.text = "I don't like peas!"
        if let url = Bundle.main.url(forResource: "I don't like peas", withExtension: "m4a") {
            player = AVPlayer(url: url)
            player?.play()
        }
}
    override func viewDidLoad() {
        super.viewDidLoad()
        ifYouEatPeas.text = "If you eat your peas,I will buy you"
        let speech = AVSpeechUtterance(string: ifYouEatPeas.text!)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
       
        
    }
    
    @IBAction func ansButtonPressed(_ sender: UIButton) {
            if prize.text == prizes.randomElement() {
                self.peaSlider.value = Float((self.peaSlider.value) - 1)
            }else {
                
                self.peaSlider.value = Float((self.peaSlider.value) + 1)
            }
        if self.peaSlider.value == 10{
             number1.isEnabled = false
             number2.isEnabled = false
             number3.isEnabled = false
        ifYouEatPeas.text = "Congraturations! You don't need to eat your peas"
        let speech = AVSpeechUtterance(string: ifYouEatPeas.text!)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
        }
}
}
