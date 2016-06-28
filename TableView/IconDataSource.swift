//
//  IconDataSource.swift
//  TableView
//
//  Created by AST-iMac-0015 on 6/27/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import Foundation

class IconDataSource {
    var icons:[Icon]
    
    init() {
        icons = []
        let icon1 = Icon(iconTitle: "summer1", iconSubTitle: "love1", iconImageName: "summericons_100px_01.png")
        icons.append(icon1)
        
        let icon2 = Icon(iconTitle: "summer2", iconSubTitle: "love2", iconImageName: "summericons_100px_02.png")
        icons.append(icon2)
        
        let icon3 = Icon(iconTitle: "summer3", iconSubTitle: "love3", iconImageName: "summericons_100px_03.png")
        icons.append(icon3)
        
        let icon4 = Icon(iconTitle: "summer4", iconSubTitle: "love4", iconImageName: "summericons_100px_04.png")
        icons.append(icon4)
        
        let icon5 = Icon(iconTitle: "summer5", iconSubTitle: "love5", iconImageName: "summericons_100px_05.png")
        icons.append(icon5)
        
        let icon6 = Icon(iconTitle: "summer6", iconSubTitle: "love6", iconImageName: "summericons_100px_06.png")
        icons.append(icon6)
        
        let icon7 = Icon(iconTitle: "summer7", iconSubTitle: "love7", iconImageName: "summericons_100px_07.png")
        icons.append(icon7)
        
        let icon8 = Icon(iconTitle: "summer8", iconSubTitle: "love8", iconImageName: "summericons_100px_08.png")
        icons.append(icon8)
        
        let icon9 = Icon(iconTitle: "summer9", iconSubTitle: "love9", iconImageName: "summericons_100px_09.png")
        icons.append(icon9)
        
        let icon10 = Icon(iconTitle: "summer10", iconSubTitle: "love10", iconImageName: "summericons_100px_10.png")
        icons.append(icon10)
    }
//    func getIcons() -> [Icon] {
//        return icons
//    }
}