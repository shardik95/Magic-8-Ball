//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hardik Shah on 7/11/18.
//  Copyright © 2018 Hardik Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    var ballArray: [String] = ["ball1","ball2","ball3","ball4","ball5"];
    
    var randomBall: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallImage();
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomBallImage();
    }
    
    func randomBallImage(){
        randomBall = (Int)(arc4random_uniform(5))
        ImageView.image = UIImage(named: ballArray[randomBall])
    }
    
}

