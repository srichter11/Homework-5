//
//  Exercise4.swift
//  ViewExercises
//
//  Created by Sophia Richter on 3/3/16.
//  Copyright © 2016 Anomalus. All rights reserved.
//

import UIKit

class Exercise4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // you can also ibo outlet a var mybotton and then do mybutton. atributes in view did load.
        
        createButton()
    }
    
    func createButton() {
        let button = UIButton()
        button.backgroundColor = UIColor.greenColor()
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.redColor().CGColor
        button.layer.cornerRadius = 5
        button.setTitle("Tap Me!", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        
        let widthConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 75)
        
        let heightConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant:75)
        
        NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0.0).active = true
        
        NSLayoutConstraint(item: button, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0.0).active = true
        
        self.view.addConstraint(heightConstraint)
        self.view.addConstraint(widthConstraint)
    }
    
    
    func buttonAction(button:UIButton!) {
        button.backgroundColor = UIColor.redColor()
    }
}