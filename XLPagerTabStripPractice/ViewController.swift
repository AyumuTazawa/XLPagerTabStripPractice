//
//  ViewController.swift
//  XLPagerTabStripPractice
//
//  Created by 田澤歩 on 2021/03/16.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {
    
    
    
    override func viewDidLoad() {
        
        setupUI()
        
        super.viewDidLoad()
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        //管理されるViewControllerを返す処理
        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "First")
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Second")
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Third")
        let FourthVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Fourth")
        let FifthVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Fifth")
        let childViewControllers:[UIViewController] = [firstVC, secondVC, thirdVC, FourthVC, FifthVC]
        return childViewControllers
    }
    
    func setupUI() {
        
        //バーの色
        settings.style.buttonBarBackgroundColor = UIColor(red: 73/255, green: 72/255, blue: 62/255, alpha: 1)
        //ボタンの色
        settings.style.buttonBarItemBackgroundColor = UIColor(red: 73/255, green: 72/255, blue: 62/255, alpha: 1)
        //セルの文字色
        settings.style.buttonBarItemTitleColor = UIColor.white
        //セレクトバーの色
        settings.style.selectedBarBackgroundColor = UIColor(red: 254/255, green: 0, blue: 124/255, alpha: 1)
        // ButtonBarItemのフォントサイズ
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        
        // 選択中のButtonBarインジケーターの太さ
        settings.style.selectedBarHeight = 2.0
        // ButtonBarの左端の余白
        settings.style.buttonBarLeftContentInset = 8
        // ButtonBarの右端の余白
        settings.style.buttonBarRightContentInset = 8
        // Button内の余白
        settings.style.buttonBarItemLeftRightMargin = 32
        
        // スワイプやButtonBarItemタップ等でページを切り替えた時の動作
        changeCurrentIndexProgressive = { oldCell, newCell, progressPercentage, changeCurrentIndex, animated in
            // 変更されたか、選択前後のCellをアンラップ
            guard changeCurrentIndex, let oldCell = oldCell, let newCell = newCell else { return }
            // 選択前のセルの状態を指定
            oldCell.label.textColor = UIColor.lightGray
            // 選択後のセルの状態を指定する
            newCell.label.textColor = UIColor(red: 254/255, green: 0, blue: 124/255, alpha: 1)
            
            super.viewDidLoad()
        }
    }
    
}

