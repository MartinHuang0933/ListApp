//
//  ViewController.swift
//  ListApp
//
//  Created by soloman on 2018/6/7.
//  Copyright © 2018年 Ezek-Martin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet var topBtn: UIButton!
    @IBOutlet var mainTbl: UITableView!
    
    var info = [
        ["林書豪","陳信安"],
        ["陳偉殷","王建民","陳金鋒","林智勝"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //创建一个重用的单元格
        self.mainTbl!.register(UINib(nibName:"MainViewTableViewCell", bundle:nil), forCellReuseIdentifier:"myCell")
        
    }
    
    func sayHelloWorld() -> Void {
        //return "hello, world"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func topBtnClick(_ sender: Any)
    {
        let myViewController = ListViewController(nibName: "ListViewController", bundle: nil)
        self.navigationController!.pushViewController(myViewController, animated: true)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "123123123123123123123"
//        cell.imageView?.image = UIImage(named: sceneFigureArray[indexPath.row])
        
//        let cellll = tableView.dequeueReusableCell(withIdentifier: "MainViewTableViewCell", for: indexPath)
//        let ceeeeee = tableView.dequeueReusableCell(withIdentifier: "MainViewTableViewCell")
        
        let celllllllll:MainViewTableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MainViewTableViewCell
        
        return celllllllll
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        info .reserveCapacity(1)
        return info.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myViewController = ListViewController(nibName: "ListViewController", bundle: nil)
        self.navigationController!.pushViewController(myViewController, animated: true)
    }
    
    
}

