//
//  ViewController.swift
//  algorhythms
//
//  Created by jrrembert on 6/8/15.
//  Copyright (c) 2015 District Labs. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    @IBOutlet weak var aButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aButton.setTitle("Press me!", forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Handles segue between our views.
        // We want the button text in our PlaylistDetail view to change when we segue to it
        //    from our PlaylistMaster view.
    
        if segue.identifier == "showPlaylistDetail" {
            
            //Will trigger runtime error if destinationViewController can't be downcast
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            
            playlistDetailController.segueLabelText = "Yay! You pressed the button!"
        }
    }
}

