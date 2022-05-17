//
//  ViewController.swift
//  Bang Wool's Gallery
//
//  Created by 이동기 on 2022/05/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named: "1.jpeg")!,
                          UIImage(named: "2.jpeg")!,
                          UIImage(named: "3.jpeg")!,
                          UIImage(named: "4.jpeg")!,
                          UIImage(named: "5.jpeg")!,
                          UIImage(named: "6.jpeg")!,
                          UIImage(named: "7.jpeg")!,
                          UIImage(named: "8.jpeg")!,
                          UIImage(named: "9.jpeg")!,
                          UIImage(named: "10.jpeg")!,
                          UIImage(named: "11.jpeg")!,
                          UIImage(named: "12.jpeg")!,
                          UIImage(named: "13.jpeg")!,
                          UIImage(named: "14.jpeg")!,
                          UIImage(named: "15.jpeg")!,
        ]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        
    }
    
    @IBAction func toggleButton(_ sender: Any) {
        
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }
    }
    
    
    @IBAction func speedSliderAction(_ sender: Any) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
}
