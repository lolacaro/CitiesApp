//
//  ViewController.swift
//  Cities
//
//  Created by Carola F on 01.06.15.
//  Copyright (c) 2015 Carola F. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {
    
    var city: City?
    
    @IBOutlet weak var CityButton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        CityButton.setTitle(city?.name, forState: .Normal)
    }


}

