//
//  ViewController.swift
//  Tappity
//
//  Created by Michael McCormack on 29/5/17.
//  Copyright © 2017 Michael McCormack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var time = 30
    var score = 0
    @IBOutlet weak var TmrReadout: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var ScoreReadout: UILabel!
    @IBAction func initButton(_ sender: UIButton) {score = score + 1
            ScoreReadout.text = ("\(score)")
    }

}

