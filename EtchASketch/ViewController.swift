//
//  ViewController.swift
//  EtchASketch
//
//  Created by Shane Lacey on 27/04/2017.
//  Copyright © 2017 Shane Lacey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var knobVerticalHolder: UIView!
    @IBOutlet weak var knobHorizontalHolder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showKnob()
    }
    
    func showKnob() {
        let knobVerticalControl = IOSKnobControl(frame: knobVerticalHolder.bounds)
        knobVerticalControl!.mode = .continuous
        knobVerticalControl!.tintColor = UIColor.init(white: 1.0, alpha: 1.0)
        knobVerticalControl?.addTarget(self, action: #selector(knobVerticalChanged), for: .valueChanged)
        knobVerticalHolder.addSubview(knobVerticalControl!)
        
        let knobHorizontalControl = IOSKnobControl(frame: knobHorizontalHolder.bounds)
        knobHorizontalControl!.mode = .continuous
        knobHorizontalControl!.tintColor = UIColor.init(white: 1.0, alpha: 1.0)
        knobHorizontalHolder.addSubview(knobHorizontalControl!)
    }
    
    func knobVerticalChanged(sender: IOSKnobControl) {
        print("Vertical changed:", sender)
        print("Position:", sender.position)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
}

