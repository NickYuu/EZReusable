//
//  ViewController.swift
//  EZReusable
//
//  Created by NickYuu on 07/20/2017.
//  Copyright (c) 2017 NickYuu. All rights reserved.
//

import UIKit
import EZReusable

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, type: MyCell.self)
        return cell
    }
}
