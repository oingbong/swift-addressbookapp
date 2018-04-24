//
//  HolidayViewController.swift
//  AddressBookApp
//
//  Created by yuaming on 16/04/2018.
//  Copyright © 2018 yuaming. All rights reserved.
//

import UIKit
import Foundation

class HolidayViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var holidayDataManager: HolidayDataManager!
    private let cellIndentifier = "Cell"
    private let cellHeight = CGFloat(80)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        setup()
    }
}

private extension HolidayViewController {
    @objc func refreshTableView(notification: Notification) {
        guard let holidayDataManager = notification.object as? HolidayDataManager else {
            return
        }
            
        self.holidayDataManager = holidayDataManager
    }
    
    func setup() {
        NotificationCenter.default.addObserver(self, selector: #selector(refreshTableView(notification:)), name: Notification.Name.holidayDataManager, object: nil)
        
        holidayDataManager = HolidayDataManager()
        holidayDataManager.convert(HolidayJson.stringAddedImages)
    }
}

extension HolidayViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as?  HolidayTableViewCell else {
            return UITableViewCell()
        }
    
        cell.bind(holidayDataManager[indexPath.row])
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidayDataManager.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
}