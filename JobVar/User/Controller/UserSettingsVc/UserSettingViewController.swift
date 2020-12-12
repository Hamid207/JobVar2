//
//  UserSettingViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class UserSettingViewController: UIViewController {
    
    var userTabeleView = UITableView(frame: .zero, style: .plain)
    
    var viewModel: UserSettingViewModelProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationItem.title = "UserSettingViewController"
        setupNavigationBar()
        itemSetup()
        viewModel?.firebaseSet?.currentUser(withPath: "allUsers", child: "user")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.viewModel?.firebaseSet?.observe()
        DispatchQueue.main.async {
            self.userTabeleView.reloadData()
        }

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        viewModel?.firebaseSet?.removeAllObserverr()
    }
    
}
