//
//  ViewController.swift
//  СolorManagement
//
//  Created by Artem Bazhanov on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    private struct ColorValue {
        var redValue: Float
        var greenValue: Float
        var blueValue: Float
    }
    
    private var colorValue = ColorValue(redValue: 0, greenValue: 0.5, blueValue: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValue.text = String(colorValue.redValue)
        greenValue.text = String(colorValue.greenValue)
        blueValue.text = String(colorValue.blueValue)
        
        redSlider.value = colorValue.redValue
        greenSlider.value = colorValue.greenValue
        blueSlider.value = colorValue.blueValue
        
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }

    @IBAction func redSliderAction() {
        colorValue.redValue = redSlider.value
        redValue.text = String(round(100 * colorValue.redValue) / 100)
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        colorValue.greenValue = greenSlider.value
        greenValue.text = String(round(100 * colorValue.redValue) / 100)
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }

    @IBAction func blueSliderAction() {
        colorValue.blueValue = blueSlider.value
        blueValue.text = String(round(100 * colorValue.redValue) / 100)
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }
}

