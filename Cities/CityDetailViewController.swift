//
//  CityDetailViewController.swift
//  Cities
//
//  Created by Carola F on 03.06.15.
//  Copyright (c) 2015 Carola F. All rights reserved.
//

import Foundation
import UIKit

class CityDetailViewController: UIViewController {
    var city: City?
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewWillAppear(animate: Bool) {
        self.nameLabel.text = city?.name
        self.imageView.image = city?.image
    }
    
}