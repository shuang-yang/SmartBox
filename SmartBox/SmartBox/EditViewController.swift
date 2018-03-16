//
//  EditViewController.swift
//  SmartBox
//
//  Created by Shuang Yang on 14/2/18.
//  Copyright © 2018 nus.esp3903.a0107442. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    private var hourSelected = false
    private var minuteSelected = false
    private var amPmSelected = false
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        switch pickerView.tag {
        case 0:
            return 1
        case 1, 2, 3:
            return 3
        case 4:
            return 1
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 0:
            return Constants.numOfPatients
        case 1, 2, 3:
            switch component {
            case 0:
                return 12
            case 1:
                return 6
            case 2:
                return 2
            default:
                return 1
            }
        case 4:
            return 20
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch pickerView.tag {
        case 1:
            switch component {
            case 0:
                hour1.text = "\(hours[row])"
                hourSelected = true
                break
            case 1:
                minute1.text = "\(minutes[row])"
                minuteSelected = true
                break
            case 2:
                amPm1.text = amPm[row]
                amPmSelected = true
                break
            default:
                break
            }
            if hourSelected && minuteSelected && amPmSelected {
                pickerView.isHidden = true
                hourSelected = false
                minuteSelected = false
                amPmSelected = false
            }
        case 2:
            switch component {
            case 0:
                hour2.text = "\(hours[row])"
                break
            case 1:
                minute2.text = "\(minutes[row])"
                break
            case 2:
                amPm2.text = amPm[row]
                break
            default:
                break
            }
        case 3:
            switch component {
            case 0:
                hour3.text = "\(hours[row])"
                break
            case 1:
                minute3.text = "\(minutes[row])"
                break
            case 2:
                amPm3.text = amPm[row]
                break
            default:
                break
            }
        case 4:
            dosage.text = "\(dosages[row])"
            break
        default:
            break
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 0:
            return patients[row]
        case 1, 2, 3:
            switch component {
            case 0:
                return "\(hours[row])"
            case 1:
                return "\(minutes[row])"
            case 2:
                return amPm[row]
            default:
                return "nil"
            }
        case 4:
            return "\(dosages[row])"
        default:
            return "nil"
        }
    }
    
    var patients = ["Mom", "Dad", "Grandpa", "Grandma"]
    var hours = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    var minutes = [0, 10, 20, 30, 40, 50, 60]
    var amPm = ["am", "pm"]
    var dosages = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    
    
    @IBOutlet weak var firstTimingPicker: UIPickerView!
    @IBOutlet weak var secondTimingPicker: UIPickerView!
    @IBOutlet weak var thirdTimingPicker: UIPickerView!
    @IBOutlet weak var medicineName: UITextField!
    @IBOutlet weak var medicineDosage: UIPickerView!
    @IBOutlet weak var hour1: UILabel!
    @IBOutlet weak var minute1: UILabel!
    @IBOutlet weak var amPm1: UILabel!
    @IBOutlet weak var hour2: UILabel!
    @IBOutlet weak var minute2: UILabel!
    @IBOutlet weak var amPm2: UILabel!
    @IBOutlet weak var hour3: UILabel!
    @IBOutlet weak var minute3: UILabel!
    @IBOutlet weak var amPm3: UILabel!
    @IBOutlet weak var dosage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initPickers()
    }
    
    @IBAction func buttonSelected(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            firstTimingPicker.isHidden = false
            break
        case 2:
            secondTimingPicker.isHidden = false
            break
        case 3:
            thirdTimingPicker.isHidden = false
            break
        case 4:
            medicineDosage.isHidden = false
            break
        default:
            break
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initPickers() {
        firstTimingPicker.delegate = self
        firstTimingPicker.dataSource = self
        secondTimingPicker.delegate = self
        secondTimingPicker.dataSource = self
        thirdTimingPicker.delegate = self
        thirdTimingPicker.dataSource = self
        medicineDosage.delegate = self
        medicineDosage.dataSource = self
    }
    
}

