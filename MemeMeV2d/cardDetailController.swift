//
//  cardDetailController.swift
//  MemeMeV2d
//
//  Created by Rick Mc on 5/13/18.
//  Copyright © 2018 Rick Mc. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailController: UIViewController
{
    var meme: Meme!
    
    @IBOutlet weak var detailView: UIImageView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        self.detailView.image = meme.memedImage
        
        detailView.contentMode = .scaleAspectFit
    }
}

