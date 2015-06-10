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
    var playlist: Playlist?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // If playlist is not nil, unwrap playlist title and assign to as button text
        if playlist != nil {
            buttonPressLabel.text = playlist!.title
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
