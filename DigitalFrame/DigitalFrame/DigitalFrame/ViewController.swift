//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Bitnoori Lee on 2018-08-26.
//  Copyright © 2018 Bitnoori Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages =  [UIImage(named: "22.jpeg")!,
                           UIImage(named: "2.jpeg")!,
                           UIImage(named: "3.jpeg")!,
                           UIImage(named: "21.jpeg")!,
                           UIImage(named: "5.jpeg")!,
                           UIImage(named: "6.jpeg")!,
                           UIImage(named: "7.jpeg")!,
                           UIImage(named: "8.jpeg")!,
                           UIImage(named: "9.jpeg")!,
                           UIImage(named: "10.jpeg")!,
                           UIImage(named: "11.jpeg")!,
                           UIImage(named: "12.jpeg")!,
                           UIImage(named: "13.jpeg")!,
                           UIImage(named: "4.jpeg")!,
                           UIImage(named: "15.jpeg")!,
                           UIImage(named: "16.jpeg")!,
                           UIImage(named: "17.jpeg")!,
                           UIImage(named: "18.jpeg")!,
                           UIImage(named: "19.JPEG")!,
                           UIImage(named: "20.jpeg")!,
                           ]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 16
        speedLable.text = String(format: "%.2f", speedSlider.value)
    }
    @IBAction func toggleButton(_ sender: Any){
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
            speedLable.text = String(format: "%.2f", speedSlider.value)
        }
    }

    @IBAction func speedSliderAction(_ sender:Any){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}
