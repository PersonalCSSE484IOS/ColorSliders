//
//  ViewController.swift
//  ColorSliders
//
//  Created by Yujie Zhang on 3/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redSlider.value = 0.8
        blueSlider.value = 0.5
        greenSlider.value = 0.2
        alphaSlider.value = 0.7
        updateView()
    }


    @IBAction func sliderDidChange(_ sender: Any) {
        updateView()
    }
    
    func updateView(){
        print("Red slider value is \(redSlider.value)")
        redLabel.text = String(format: "%.2f", redSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format:"%.2f", alphaSlider.value)
        greenValue.text = String(format:"%.2f", greenSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: CGFloat(alphaSlider.value))
        
        
    }
}

