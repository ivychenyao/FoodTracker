//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ivy Chenyao on 10/15/16.
//  Copyright © 2016 Ivy Chenyao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: AnyObject) {
        mealNameLabel.text = "Default Text"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
