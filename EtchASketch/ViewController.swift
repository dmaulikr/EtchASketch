//
//  ViewController.swift
//  EtchASketch
//
//  Created by Shane Lacey on 27/04/2017.
//  Copyright © 2017 Shane Lacey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        showSlider()
    }
    
    func showSlider() {
        let sliderHorizontal = CircleSlider(frame: CGRect(x:self.view.frame.width - 125, y:self.view.frame.height - 125, width:125, height:125))
        sliderHorizontal.circle_color = UIColor.white
        sliderHorizontal.touch_color = UIColor.blue
        
        sliderHorizontal.setSelector(forAction: .touchMoved, target: self, selector: #selector(movedSlider(_:)))
        
        sliderHorizontal.makeSlider()
        self.view.addSubview(sliderHorizontal)
        print("Width:" , self.view.frame.width)
        print("Height:" , self.view.frame.height)
    }
    
    func movedSlider(_ rad: AnyObject) {
        print("Moved slider:", rad)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

