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
import AMPopTip
import GranibleLabel

class FirstViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "First"
    private let sideMenu = SideMenuNavigationController(rootViewController: MenuListContoroller())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //グラデーション
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
        
        //GranibleLabel
        setGranibleLabel()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
    //GranibleLabel
    func setGranibleLabel() {
        let label = GranibleLabel()
        label.colors = [UIColor.red, UIColor.orange]
        label.direction = .rightTopDiagonal
        label.text = "FirstPageLabel"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 10)
        label.numberOfLines = 2
        label.animate = true
        label.frame = CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: 44)
        label.font = UIFont(name: "HiraKakuProN-W6", size: 30)
        self.view.addSubview(label)
    }
}

class MenuListContoroller: UITableViewController {
    var items = ["First", "Second", "Third", "First", "Second", "Third", "First", "Second", "Third"]
    
    let darkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    
    override func viewDidLoad() {
        tableView.backgroundColor = darkColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = UIColor.darkGray
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
