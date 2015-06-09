//
//  PlaylistDetailViewController.swift
//  algorhythms
//
//  Created by jrrembert on 6/8/15.
//  Copyright (c) 2015 District Labs. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {


    @IBOutlet weak var buttonPressLabel: UILabel!
    var segueLabelText: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Change button text based on our overridden prepareForSegue func
        buttonPressLabel.text = segueLabelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
