//
//  ViewController.swift
//  TConverter
//
//  Created by Valentina Abramova on 21/07/2019.
//  Copyright © 2019 Valentina Abramova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiumLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsium = Int(round(sender.value))
        celsiumLabel.text = "\(temperatureCelsium)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32 ))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
}

