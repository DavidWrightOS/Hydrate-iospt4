//
//  exampleInterfaceController.swift
//  Hydrate-WatchOS Extension
//
//  Created by Sal B Amer on 6/24/20.
//  Copyright © 2020 Hydrate. All rights reserved.
//

import WatchKit
import Foundation


class exampleInterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    /// ranom

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
