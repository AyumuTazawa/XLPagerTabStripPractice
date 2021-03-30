//
//  FifthViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/30.
//

import UIKit
import XLPagerTabStrip

class FifthViewController: UIViewController, IndicatorInfoProvider {

    var itemInfo: IndicatorInfo = "Fifth"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return itemInfo
        }
}
