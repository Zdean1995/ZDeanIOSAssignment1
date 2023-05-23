//
//  ViewController.swift
//  ZDeanAssignment1
//
//  Created by Zachary on 2023-05-15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnMTG(_ sender: Any) {
        Task {
            await print(apiHelper.fetchMtg())
        }
    }
    
    @IBAction func btnRs(_ sender: Any) {
        Task {
            await print(apiHelper.fetchRs())
        }
    }
    
    @IBAction func btnYgo(_ sender: Any) {
        Task {
            await print(apiHelper.fetchYgo())
        }
    }
}

