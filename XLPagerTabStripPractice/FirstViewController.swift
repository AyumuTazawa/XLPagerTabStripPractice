//
//  FirstViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip
import AnimatedGradientView
import SideMenu

class FirstViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "First"
    private let sideMenu = SideMenuNavigationController(rootViewController: UIViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = AnimatedGradientView(frame: view.bounds)
        gradient.autoAnimate = false
        gradient.colorStrings = [["#3224AE", "#FF66FF"]]
        gradient.type = .axial
        view.addSubview(gradient)
        
        //SideMenu
        sideMenu.leftSide = true
        sideMenu.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
}

