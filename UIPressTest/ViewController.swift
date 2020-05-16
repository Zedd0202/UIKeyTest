//
//  ViewController.swift
//  UIPressTest
//
//  Created by Zedd on 2020/05/16.
//  Copyright © 2020 Zedd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        presses.forEach {
            guard let key = $0.key else { return }
            self.myLabel.text = "응 \(key.characters) 누른 부분이야~"
        }
    }
}

