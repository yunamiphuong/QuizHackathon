//
//  End_ViewController.swift
//  Project_Trac_Nghiem
//
//  Created by Ong_Lao_Ngao on 5/16/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class End_ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var again: UIButton!
    @IBOutlet weak var end: UIButton!
    var scrore: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        again.layer.cornerRadius = CGFloat(15)
        end.layer.cornerRadius = CGFloat(15)
        let mainViewController = Main_ViewController()
        print(mainViewController.score)
        result.text = String(scrore) + "/10"
    }
    @IBAction func againAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func endAction(_ sender: Any) {
    }
}
