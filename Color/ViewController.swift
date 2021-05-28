//
//  ViewController.swift
//  Color
//
//  Created by 王冊 on 2021/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    //調色、透明度、漸層、圓角、陰影slider
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var gradualSlider: UISlider!
    @IBOutlet weak var radiusSlider: UISlider!
    @IBOutlet weak var borderSlider: UISlider!

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var gradientView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //自訂Slider圖案
    redSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    greenSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    blueSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    alphaSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    gradualSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    radiusSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    borderSlider.setThumbImage(UIImage(named: "botton"), for: .normal)
    }
    
    //改變slider顏色
    @IBAction func changeColor(_ sender: UISlider) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value),green: CGFloat(greenSlider.value),blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    //漸層
    @IBAction func changegradualSlider(_ sender: UISlider) {
        let gradientLayer = CAGradientLayer()
        let locationLeft = round(15*gradualSlider.value)/15
        gradientLayer.colors = [UIColor.red.cgColor ,UIColor.white.cgColor]
        gradientLayer.frame = gradientView.bounds
        gradientLayer.locations = [0.0,NSNumber(value: locationLeft)]
        gradientView.layer.addSublayer(gradientLayer)
        
    }
    //圓角
    @IBAction func changeRadiusSlider(_ sender: UISlider) {
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = CGFloat(radiusSlider.value)
        shadowView.layer.cornerRadius = CGFloat(radiusSlider.value)
    }
    
    //邊框
    @IBAction func changeBorderSlider(_ sender: UISlider) {
        //self.imageView.layer.borderColor = UIColor.black.cgColor
        //self.imageView.layer.borderWidth = CGFloat(borderSlider.value)
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = CGFloat(borderSlider.value)
    }
}

