//
//  HomeViewController.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/23/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var allRoostersView: UIView!
    @IBOutlet weak var settingView: UIView!
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.rowHeight = UITableView.automaticDimension
            tableView.register(UINib(nibName: "HomeSectionCell", bundle: nil), forCellReuseIdentifier: resuseIdentifier)
            tableView.separatorStyle = .none
        }
    }
    
    // MARK: - Class Level Variables
    
    private var resuseIdentifier = "HomeSectionCell"
    var teams = HomeViewModel.decodeTeams()
    
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareViews()
        
    }
    
    // MARK: - Class Level Functions
    
    private func prepareViews() {
        searchView.layer.cornerRadius = 10
        allRoostersView.layer.cornerRadius = 10
        settingView.layer.cornerRadius = 10
        
    }
    
}

// MARK: - Table View Methods

extension HomeViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: resuseIdentifier, for: indexPath) as! HomeSectionCell
        cell.configureCell(data: self.teams[indexPath.row])
        return cell
    }
    
}

extension HomeViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
