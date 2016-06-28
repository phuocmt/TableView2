//
//  IconDataSource.swift
//  TableView
//
//  Created by AST-iMac-0015 on 6/27/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import Foundation

class Icon {
    var iconTitle: String = ""
    var iconSubTitle: String = ""
    var iconImageName: String = ""
    
    init(iconTitle: String, iconSubTitle: String, iconImageName: String) {
        self.iconTitle = iconTitle
        self.iconSubTitle = iconSubTitle
        self.iconImageName = iconImageName
    }
    
}