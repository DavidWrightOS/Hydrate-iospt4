//
//  CustomDrinkInterfaceController.swift
//  Hydrate-WatchOS Extension
//
//  Created by Sal B Amer on 6/24/20.
//  Copyright © 2020 Hydrate. All rights reserved.
//

import WatchKit
import Foundation


class CustomDrinkInterfaceController: WKInterfaceController {

    //MARK: Outlets
    
    @IBOutlet weak var customDrinkSizePicker: WKInterfacePicker!
    
    //Properties
    var rangeOfDrinkSize: [Int] = [Int]()
    var pickerVolumeSelected: [String] = [String]()
    var selectedVolume = 0 // start with zero
 
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        //in Oz
//        rangeOfDrinkSize = (10..<100).filter{ $0 % 10 == 0}
//        let drinkSizes = rangeOfDrinkSize.map { pickerItem(amount: $0) }
        
        //in ML
        rangeOfDrinkSize = (2..<100).filter{ $0 % 2 == 0}
        let drinkSizes = rangeOfDrinkSize.map { pickerItem(amount: $0) }
        customDrinkSizePicker.setItems(drinkSizes)
    }
    
    // picker amounts for scrolling
    func pickerItem(amount: Int) -> WKPickerItem {
//        let mlConversion = Int(amount / 30)
//        let title = "\(mlConversion) Oz"
        let title = "\(amount) Oz"
        let selectedItem = WKPickerItem()
        selectedItem.caption = title
        selectedItem.title = title
        return selectedItem
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //MARK: Action
    
    @IBAction func pickerWasSelected(_ value: Int) {
        selectedVolume = rangeOfDrinkSize[value]
    }
    
    
    
    @IBAction func saveBtnWasPressed() {
        let ozToMlConversion = selectedVolume * 30
        HealthKitWaterDataStore().writeWaterData(amount: Double(ozToMlConversion))
        popToRootController()
    }
    
}
