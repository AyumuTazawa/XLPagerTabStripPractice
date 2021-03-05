//
//  FirstViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/05.
//

import UIKit
import XLPagerTabStrip

class FirstViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "First"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //必須
        func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return itemInfo
        }

}

