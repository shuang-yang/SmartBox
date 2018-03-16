//
//  FirstViewController.swift
//  SmartBox
//
//  Created by Shuang Yang on 6/2/18.
//  Copyright © 2018 nus.esp3903.a0107442. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "medicineList", for: indexPath as IndexPath) as! MedicineListCell
        cell.displayContent()
        return cell
    }
    
    @IBOutlet weak var medicineList: UICollectionView!
    
    @IBAction func reminderSwitch(_ sender: Any) {
    }
    @IBAction func editButton(_ sender: Any) {
    }
    
    @IBOutlet weak var firstTiming: UILabel!
    @IBOutlet weak var firstTimingSwitch: UISwitch!
    @IBOutlet weak var secondTiming: UILabel!
    @IBOutlet weak var secondTimingSwitch: UISwitch!
    @IBOutlet weak var thirdTiming: UILabel!
    @IBOutlet weak var thirdTimingSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

