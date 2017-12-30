//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Lawrence Dawson on 30/12/2017.
//  Copyright © 2017 Lawrence Dawson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomNumberBall : Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newButtonImage()
    }
    
    func newButtonImage(){
        
        randomNumberBall = Int (arc4random_uniform(4))
        
        ballImage.image = UIImage(named: ballArray[randomNumberBall])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newButtonImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

