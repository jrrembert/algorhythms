//
//  ViewController.swift
//  algorhythms
//
//  Created by J. Ryan Rembert on 1/12/15.
//  Copyright (c) 2015 District Labs. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    var playlistsArray: [UIImageView] = []
    @IBOutlet weak var playlistImageView0: UIImageView!
    @IBOutlet weak var playListImageView1: UIImageView!
    @IBOutlet weak var playListImageView2: UIImageView!
    @IBOutlet weak var playListImageView3: UIImageView!
    @IBOutlet weak var playListImageView4: UIImageView!
    @IBOutlet weak var playListImageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playlistsArray += [playlistImageView0,
        playListImageView1, playListImageView2,
        playListImageView3, playListImageView4,
        playListImageView5]
        
        for index in 0..<playlistsArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
        
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue" {
            
            let playlistImageView = sender!.view as! UIImageView
            
            //If element exists return index, else return nil
            if let index = find(playlistsArray, playlistImageView) {
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
                
                
            }
            
            
        }
    }

    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }

}

