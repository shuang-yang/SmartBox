//
//  MedicineListCollectionViewCell.swift
//  SmartBox
//
//  Created by Shuang Yang on 14/2/18.
//  Copyright © 2018 nus.esp3903.a0107442. All rights reserved.
//

import UIKit

class MedicineListCell: UICollectionViewCell {
    
    
    @IBOutlet var medicineName: UILabel!
    @IBOutlet var medicineDosage: UILabel!
    
    func displayContent() {
        medicineName.text = "Medicine name"
        medicineDosage.text = "dosage"
    }
}

