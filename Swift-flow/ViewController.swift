//
//  ViewController.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/11.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,NextViewControllerDelegate{
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let tab = UITableView.init(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: self.view.frame.size.width, height: self.view.frame.size.height)) ,style: UITableView.Style.plain)
        self.view.addSubview(tab)
        tab.backgroundColor = UIColor.green
        tab.delegate = self;
        tab.dataSource = self;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("lllllllllllllllll");
        let vc = NextViewController.init(nibName: nil, bundle: nil)
        vc.delegate = self;
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    func test(text: String) {
        NSLog("ddddddddddddd\(text)")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "123")
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "123")
            
        }
        return cell!
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
   


}

