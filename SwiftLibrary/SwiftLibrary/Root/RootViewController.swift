//
//  RootViewController.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import UIKit
import SnapKit

class RootViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        return tableView
    }()
    
    private var rootViewModel: RootViewModel
    
    var didSelectedCell: ((Topic) -> Void)?
    
    // MARK: - Init Method
    init(rootViewModel: RootViewModel) {
        self.rootViewModel = rootViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstrain()
        setupView()
    }

    // MARK: - Private Method
    private func setupView() {
        title = "Code Library"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RootTableViewCell.self)
    }
    
    private func setupConstrain() {
        view.addSubview(tableView)
        tableView.applyEqualConstraints(to: view)
    }
}

// MARK: - UITableViewDelegate
extension RootViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let topic = rootViewModel.topics[indexPath.row]
        didSelectedCell?(topic)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

// MARK: - UITableViewDataSource
extension RootViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rootViewModel.topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(RootTableViewCell.self, indexPath: indexPath)
        cell.setup(title: rootViewModel.topics[indexPath.row].title)
        return cell
    }
}

