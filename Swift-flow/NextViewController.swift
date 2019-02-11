//
//  NextViewController.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/11.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit

protocol NextViewControllerDelegate {
    func test(text:String) -> Void
}

class NextViewController: UIViewController {

    var delegate:NextViewControllerDelegate?
    
    @IBOutlet weak var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var tap = UITapGestureRecognizer.init(target: self, action: #selector( tapAction(action:)))
        testView.addGestureRecognizer(tap)
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    @objc func tapAction(action:UITapGestureRecognizer) ->  Void{
        print("\(action)")
        delegate?.test(text: "aaa");
        navigationController?.popViewController(animated: true)
    }
//    func tapAction(action:UITapGestureRecognizer) -> Void {
//        NSLog("\(action)");
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
