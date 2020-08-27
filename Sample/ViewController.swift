//
//  ViewController.swift
//  Sample
//
//  Created by Kento_E on 2020/08/27.
//  Copyright © 2020 Kento_E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 50, width: 100, height: 50)
        button.setTitle("Clear", for: .normal)
        button.addTarget(self, action: #selector(self.clearHello(_:)), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @IBAction func showHello(_ sender: Any) {
        self.textLabel.text = "Hello!"
    }
    
    @objc func clearHello (_ sender: Any) {
        self.textLabel.text = "Welcome!"
    }
}
