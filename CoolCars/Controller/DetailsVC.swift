//
//  DetailsVC.swift
//  CoolCars
//
//  Created by Ahmed AlOtaibi on 7/6/20.
//  Copyright © 2020 Ahmed AlOtaibi. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    // Labels and Pictures IBOutlets
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var accelerationLbl: UILabel!
    @IBOutlet weak var rangeLbl: UILabel!
    
     // Calling the model struct
       var carInfo: CarInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = carInfo.name!
        yearLbl.text = "Year: \(carInfo.year!)"
        modelLbl.text = "Model: \(carInfo.model!)"
        accelerationLbl.text = "Acceleration: \(carInfo.acceleration!)"
        rangeLbl.text = "Range: \(carInfo.range!)"
        carImage.image = carInfo.pic
    }
}
