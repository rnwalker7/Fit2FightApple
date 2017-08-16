//
//  topView.swift
//  Fit2Fight
//
//  Created by Robert Walker on 8/13/17.
//  Copyright © 2017 Robert Walker. All rights reserved.
//

import UIKit

class topView: UIView, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerAge: UIPickerView!
    @IBOutlet weak var pickerGender: UIPickerView!
    var ageGroups = ["19 and Under", "20-29", "30-39", "40-49", "50-59", "60 and Over"]
    var genders = ["Male", "Female"]
    
    let pickerAge.dataSource = ageGroups;
    let pickerGender.dataSource = genders;
    
    func numberOfComponents(in pickerAge:UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(numberOfRowsInComponent component:Int) -> Int {
        return ageGroups.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return ageGroups[row]
    }
    

}
