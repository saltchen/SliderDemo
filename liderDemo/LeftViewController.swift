//
//  LeftViewController.swift
//  liderDemo
//
//  Created by admin on 16/6/2.
//  Copyright © 2016年 saltchen. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController,UITableViewDelegate ,UITableViewDataSource{
    
    
    var tableView = UITableView()
    
   let width = UIScreen.mainScreen().bounds.width - 70.0
    let height = (UIScreen.mainScreen().bounds.height) - 70.0
    //定义标题栏目
    
    let menu  = ["科技新闻", "社会新闻","体育新闻","娱乐新闻","教育新闻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //设置tableView的一些属性
        
       // self.tableView = UITableView(frame: UIScreen.mainScreen().bounds , style: UITableViewStyle.Grouped)
       
        self.view.backgroundColor = UIColor.whiteColor()
        tableView = UITableView(frame: CGRectMake(0, 70, width, height), style: UITableViewStyle.Plain)

        tableView.dataSource = self
        tableView.delegate = self
        
        self.view.addSubview(tableView)
        //定时器控制头条新闻进行跳转
        //NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "AutoScroll", userInfo: nil, repeats: true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else{
            return menu.count
        }
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: nil)
        if indexPath.section == 0{
            cell.textLabel?.text = "首页"
            cell.accessoryType = UITableViewCellAccessoryType.init(rawValue: 1)!
            //cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            
        }
        else{
                cell.textLabel?.text = menu[indexPath.row]
            cell.textLabel?.textColor = UIColor.brownColor()
            
            cell.accessoryType = UITableViewCellAccessoryType.None
            //            print(cell.textLabel?.text)
        }
        
       
        
        return cell
    
    
}
}
