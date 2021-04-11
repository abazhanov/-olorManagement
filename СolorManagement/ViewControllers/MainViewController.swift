//
//  MainViewController.swift
//  СolorManagement
//
//  Created by Artem Bazhanov on 09.04.2021.
//

import UIKit

protocol OptionViewControllerDelegate {
    func setColor(redColor: Float, greenColor: Float, blueColor: Float)
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let optionVC = segue.destination as? OptionViewController else { return }
   
        optionVC.ColorFromView = self.view.backgroundColor
        optionVC.delegate = self
   
    }
}

extension MainViewController: OptionViewControllerDelegate {
    func setColor(redColor: Float, greenColor: Float, blueColor: Float) {
        view.backgroundColor = UIColor(
            red: CGFloat(redColor),
            green: CGFloat(greenColor),
            blue: CGFloat(blueColor),
            alpha: 1)
    }
    
    
}
