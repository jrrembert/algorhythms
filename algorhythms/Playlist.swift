//
//  Playlist.swift
//  algorhythms
//
//  Created by jrrembert on 6/9/15.
//  Copyright (c) 2015 District Labs. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
}