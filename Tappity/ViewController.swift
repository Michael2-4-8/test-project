//
//  ViewController.swift
//  Tappity
//
//  Created by Michael McCormack on 29/5/17.
//  Copyright © 2017 Michael McCormack. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //aouw haaaa
    }
    var time = 30
    var score = 0
    var game = false
    @IBOutlet weak var TmrReadout: UILabel!
    @IBOutlet weak var initButton: UIButton!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var ScoreReadout: UILabel!
    @IBOutlet weak var progresssser: UIProgressView!
    @IBOutlet var gameView: UIView!
    let colours:(Array) = [UIColor.red, UIColor.green, UIColor.black, UIColor.orange, UIColor.gray, UIColor.white, UIColor.purple, UIColor.brown, UIColor.cyan, UIColor.yellow]
    func reset() {
        score = 0
        time = 30
         
        ScoreReadout.text = ("\(score)")
        TmrReadout.text = ("\(time)")
        initButton.isEnabled = true
        gameView.backgroundColor = .blue
        
    }
    func Scorer(){
        game = true
        let _ = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.time = self.time - 1
            self.TmrReadout.text = ("\(self.time)")
            if self.time == 0 {
                self.game = false
                timer.invalidate()
                let gameAlert = UIAlertController(title: "game Over", message: "Your score is \(self.score)", preferredStyle: UIAlertControllerStyle.alert)
                
                gameAlert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: { (action: UIAlertAction!) in
                    self.reset()
                }))
                self.present(gameAlert, animated: true, completion: nil)
            }
            
            
            
        }
        
    }
    //srhvyuiwehrgvowiuerhjafyqwkgrmnbvlhqwerhgffgbqjehrgqjhgjheqgrjhgqre
    @IBAction func initButtin(_ sender: UIButton) {
            sender.isEnabled = false
            Scorer()
        let rInt = Int(arc4random_uniform(10))
        score = score + 1
        ScoreReadout.text = ("\(score)")
        gameView.backgroundColor = colours[rInt]
    }
    @IBAction func ButtonPressed(_ sender: UIButton) {
            if game == true{
            let randInt = Int(arc4random_uniform(10))
            score = score + 1
            ScoreReadout.text = ("\(score)")
            gameView.backgroundColor = colours[randInt]
            
        }
    }

}

