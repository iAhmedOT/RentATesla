//
//  ViewController.swift
//  CoolCars
//
//  Created by Ahmed AlOtaibi on 7/6/20.
//  Copyright © 2020 Ahmed AlOtaibi. All rights reserved.
//  Week 3 Project Devslope
//  You are going to build an app called Cool Cars.
//
//  Requirements:
//
//  The main screen will allow the user to choose from 2 or more vehicles.
//  Grab images from the Internet for your vehicles (Pick your dream cars!).
//  Each vehicle choice on screen 1 will show basic info about the vehicle (as depicted in screenshot below).
//  Tapping a vehicle will load screen 2 using a Segue.
//  Screen 2 will show details for the selected vehicle, including a larger image of the vehicle you selected.
//  You MUST use only a single view controller for screen 2 (ie do not create a new view controller for each view vehicle).
//  You should be able to navigate back to the main screen.
//  Please add your own style and design.
//  Free icons are available here: https://icons8.com/
//  Post a screenshot of your project here in the discussions.
//  Submit the assignment to be graded.


import UIKit

class MainVC: UIViewController {
    // Labels and buttons IBOutlets
    @IBOutlet weak var model3Lbl: UILabel!
    @IBOutlet weak var modelXLbl: UILabel!
    @IBOutlet weak var modelYLbl: UILabel!
    @IBOutlet weak var modelXBtn: UIButton!
    @IBOutlet weak var modelYBtn: UIButton!
    @IBOutlet weak var model3Btn: UIButton!
    
    // Calling the model struct
    var carInfo = CarInfo(name: "", year: 0, model: "", acceleration: "", range: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // IBActions
    @IBAction func modelXBtnPressed(_ sender: Any) {
        carInfo.name = "Model X"
        carInfo.year = 2020
        carInfo.model = "X"
        carInfo.acceleration = "From 0-60mph in 2.6s"
        carInfo.range = "305mi"
        carInfo.pic = modelXBtn.currentBackgroundImage
        performSegue(withIdentifier: "modelXSegue", sender: self)
    }
    @IBAction func ModelYBtnPressed(_ sender: Any) {
        carInfo.name = "Model Y"
        carInfo.year = 2020
        carInfo.model = "Y"
        carInfo.acceleration = "From 0-60mph in 3.5s"
        carInfo.range = "315mi"
        carInfo.pic = modelYBtn.currentBackgroundImage
        performSegue(withIdentifier: "modelYSegue", sender: self)
    }
    @IBAction func model3BtnPressed(_ sender: Any) {
        carInfo.name = "Model 3"
        carInfo.year = 2020
        carInfo.model = "3"
        carInfo.acceleration = "From 0-60mph in 3.2s"
        carInfo.range = "299mi"
        carInfo.pic = model3Btn.currentBackgroundImage
        performSegue(withIdentifier: "model3Segue", sender: self)
    }
    
    // The back button function
    @IBAction func unwindFromDetailsVC(unwindSegue: UIStoryboardSegue){}
    
    // Passing data to the DetailsVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? DetailsVC {
            detailsVC.carInfo = carInfo
        }
    }
    

}

