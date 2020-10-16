//
//  ViewController.swift
//  Homework_2
//
//  Created by Asdegh on 16.10.2020.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var multiColoredView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        multiColoredView.layer.cornerRadius = 10
        colorSwitch()
        labelValue()
    }
    
    //View color
    private func colorSwitch() {
        multiColoredView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                   green: CGFloat(greenSlider.value),
                                                   blue: CGFloat(blueSlider.value),
                                                   alpha: 1)
    }
    
    //RGB value
    private func labelValue() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction func colorSliderAction(_ sender: UISlider) {
        colorSwitch()
        labelValue()
    }
}

