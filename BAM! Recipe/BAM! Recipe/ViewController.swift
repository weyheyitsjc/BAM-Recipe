//
//  ViewController.swift
//  BAM! Recipe
//
//  Created by Le Trinh on 4/10/19.
//  Copyright © 2019 Le Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var saltButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        @IBAction func handleSelection(_ sender: UIButton) {
            saltButtons.forEach { (button) in
                UIView.animate(withDuration: 0.3, animations: {
                    button.isHidden = !button.isHidden
                 })
        }
    }
    @IBAction func saltTapped(_ sender: UIButton) {
    }
}
