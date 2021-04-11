//
//  ViewController.swift
//  СolorManagement
//
//  Created by Artem Bazhanov on 26.03.2021.
//

import UIKit

class OptionViewController: UIViewController {
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
    
    var ColorFromView: UIColor!
    var delegate: OptionViewControllerDelegate!
    
    private var colorValue = ColorValue(redValue: 0, greenValue: 0.5, blueValue: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 10
        
        let arrayColors = ColorFromView.cgColor.components

        colorValue = ColorValue(
            redValue: Float(arrayColors![0]),
            greenValue: Float(arrayColors![1]),
            blueValue: Float(arrayColors![2])
        )
        
        redValue.text = String(round(100 * colorValue.redValue) / 100)
        greenValue.text = String(round(100 * colorValue.greenValue) / 100)
        blueValue.text = String(round(100 * colorValue.blueValue) / 100)
        
        redSlider.value = colorValue.redValue
        greenSlider.value = colorValue.greenValue
        blueSlider.value = colorValue.blueValue
        
        viewColor.backgroundColor = .init(
            _colorLiteralRed: colorValue.redValue,
            green: colorValue.greenValue,
            blue: colorValue.blueValue,
            alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        colorValue.redValue = redSlider.value
        redValue.text = String(round(100 * colorValue.redValue) / 100)
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        colorValue.greenValue = greenSlider.value
        greenValue.text = String(round(100 * colorValue.greenValue) / 100)
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }

    @IBAction func blueSliderAction() {
        colorValue.blueValue = blueSlider.value
        blueValue.text = String(round(100 * colorValue.blueValue) / 100)
        viewColor.backgroundColor = .init(_colorLiteralRed: colorValue.redValue, green: colorValue.greenValue, blue: colorValue.blueValue, alpha: 1)
    }
    @IBAction func DoneButtonPressed() {
        delegate.setColor(
            redColor: self.colorValue.redValue,
            greenColor: self.colorValue.greenValue,
            blueColor: self.colorValue.blueValue
        )
        
        dismiss(animated: true)
    }
}

