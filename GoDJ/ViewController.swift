//
//  ViewController.swift
//  GoDJ
//
//  Created by Elwood Bolton on 7/26/16.
//  Copyright © 2016 Ari Bolton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = "This is more text!"
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        label.text = "This is a third text block"
        print("this happened")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

