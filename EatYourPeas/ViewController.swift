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
    var x = 0
    var y = 0
   
    @IBOutlet weak var prizeSegment: UISegmentedControl!
    @IBOutlet weak var mom: UIButton!
    @IBOutlet weak var iDontLikePeas: UILabel!
    @IBOutlet weak var peaSlider: UISlider!
    @IBOutlet weak var prize: UILabel!
   
    @IBOutlet weak var ifYouEatPeas: UILabel!
    @IBOutlet weak var number: UILabel!
   
   
    
    @IBAction func peaSlider(_ sender: peaUISlider) {
        sender.value.round()
        number.text = Int(sender.value).description
       
    }
   
    
    
    @IBAction func segmentSelected(_ sender: UISegmentedControl) {
        for _ in 1...10 {
        let prize = UILabel(frame: CGRect(x: x, y: y, width: 300, height: 300))
            view.addSubview(prize)
            x = x + 1
            y = y + 1
        }
        if sender.selectedSegmentIndex == 0{
             prize.textAlignment = .left
            if Int(peaSlider.value) == 1{
                prize.text = (String(repeating:"🦄", count: Int(peaSlider.value)))
                prize.text = "🦄"
           }else if Int(peaSlider.value) == 2{
                prize.text = (String(repeating:"🦄", count: Int(peaSlider.value)))
                prize.text = "🦄\n🦄"
            }else if Int(peaSlider.value) == 4{
                      prize.text = (String(repeating:"🦄", count: Int(peaSlider.value)))
                    prize.text = "🦄🦄\n🦄🦄"
            }else if Int(peaSlider.value) == 9{
                    prize.text = (String(repeating:"🦄", count: Int(peaSlider.value)))
                  prize.text = "🦄🦄🦄\n🦄🦄🦄\n🦄🦄🦄"
                }else if Int(peaSlider.value) == 16{
                    prize.text = (String(repeating:"🦄", count: Int(peaSlider.value)))
                   prize.text = "🦄🦄🦄🦄\n🦄🦄🦄🦄\n🦄🦄🦄🦄\n🦄🦄🦄🦄"
                }else if Int(peaSlider.value) == 25{
                    prize.text = (String(repeating:"🦄", count: Int(peaSlider.value)))
                    prize.text = "🦄🦄🦄🦄🦄\n🦄🦄🦄🦄🦄\n🦄🦄🦄🦄🦄\n🦄🦄🦄🦄🦄\n🦄🦄🦄🦄🦄"
            }
        }else if sender.selectedSegmentIndex == 1{
             prize.textAlignment = .left
                if Int(peaSlider.value) == 1{
                prize.text = (String(repeating:"🐘", count: Int(peaSlider.value)))
                prize.text = "🐘"
                   }else if Int(peaSlider.value) == 3{
                        prize.text = (String(repeating:"🐘", count: Int(peaSlider.value)))
                        prize.text = "🐘\n🐘🐘"
                    }else if Int(peaSlider.value) == 6{
                        prize.text = (String(repeating:"🐘", count: Int(peaSlider.value)))
                        prize.text = "🐘\n🐘🐘\n🐘🐘🐘"
                    }else if Int(peaSlider.value) == 10{
                        prize.text = (String(repeating:"🐘", count: Int(peaSlider.value)))
                        prize.text = "🐘\n🐘🐘\n🐘🐘🐘\n🐘🐘🐘🐘"
                    }else if Int(peaSlider.value) == 15{
                        prize.text = (String(repeating:"🐘", count: Int(peaSlider.value)))
                        prize.text = "🐘\n🐘🐘\n🐘🐘🐘\n🐘🐘🐘🐘\n🐘🐘🐘🐘🐘"
                    }else if Int(peaSlider.value) == 21{
                        prize.text = (String(repeating:"🐘", count: Int(peaSlider.value)))
                        prize.text = "🐘\n🐘🐘\n🐘🐘🐘\n🐘🐘🐘🐘\n🐘🐘🐘🐘🐘\n🐘🐘🐘🐘🐘🐘"
            }
        }else if sender.selectedSegmentIndex == 2{
                       prize.textAlignment = .center
            if Int(peaSlider.value) == 1{
                prize.text = (String(repeating:"🌖", count: Int(peaSlider.value)))
                prize.text = "🌖"
                        }else if Int(peaSlider.value) == 3{
                            prize.text = (String(repeating:"🌖", count: Int(peaSlider.value)))
                            prize.text = "🌖\n🌖🌖"
                        }else if Int(peaSlider.value) == 6{
                            prize.text = (String(repeating:"🌖", count: Int(peaSlider.value)))
                            prize.text = "🌖\n🌖🌖\n🌖🌖🌖"
                        }else if Int(peaSlider.value) == 10{
                            prize.text = (String(repeating:"🌖", count: Int(peaSlider.value)))
                            prize.text = "🌖\n🌖🌖\n🌖🌖🌖\n🌖🌖🌖🌖"
                        }else if Int(peaSlider.value) == 15{
                            prize.text = (String(repeating:"🌖", count: Int(peaSlider.value)))
                            prize.text = "🌖\n🌖🌖\n🌖🌖🌖\n🌖🌖🌖🌖\n🌖🌖🌖🌖🌖"
                        }else if Int(peaSlider.value) == 21{
                            prize.text = (String(repeating:"🌖", count: Int(peaSlider.value)))
                            prize.text = "🌖\n🌖🌖\n🌖🌖🌖\n🌖🌖🌖🌖\n🌖🌖🌖🌖🌖\n🌖🌖🌖🌖🌖🌖"
                        }
        }else if sender.selectedSegmentIndex == 3{
            prize.textAlignment = .center
            if Int(peaSlider.value) == 1{
                prize.text = (String(repeating:"🌎", count: Int(peaSlider.value)))
                prize.text = "🌎"
           }else if Int(peaSlider.value) == 4{
                prize.text = (String(repeating:"🌎", count: Int(peaSlider.value)))
                prize.text = "🌎\n🌎🌎\n🌎"
            }else if Int(peaSlider.value) == 9{
                prize.text = (String(repeating:"🌎", count: Int(peaSlider.value)))
                prize.text = "🌎\n🌎🌎\n🌎🌎🌎\n🌎🌎\n🌎"
            }else if Int(peaSlider.value) == 16{
                prize.text = (String(repeating:"🌎", count: Int(peaSlider.value)))
                prize.text = "🌎\n🌎🌎\n🌎🌎🌎\n🌎🌎🌎🌎\n🌎🌎🌎\n🌎🌎\n🌎"
            }else if Int(peaSlider.value) == 25{
                prize.text = (String(repeating:"🌎", count: Int(peaSlider.value)))
                prize.text = "🌎\n🌎🌎\n🌎🌎🌎\n🌎🌎🌎🌎\n🌎🌎🌎🌎🌎\n🌎🌎🌎🌎\n🌎🌎🌎\n🌎🌎\n🌎"
           
            }
            
}
}
    override func viewDidLoad() {
        super.viewDidLoad()
        peaSlider.isContinuous = false
    }
}

