//
//  TasksViewController.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import UIKit

class TasksViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var presenter : TaskPresenterProtocol?
    var tasks = [Fruit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        presenter?.loadView()
    }

}

extension TasksViewController : TaskViewProtocol {
    func displayTasks(_ tasks: [Fruit]) {
        self.tasks.append(contentsOf: tasks)
        DispatchQueue.main.async {[weak self] in
            self?.tableView.reloadData()
        }
    }
}

extension TasksViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(TaskTableViewCell.self, indexPath: indexPath)
        cell.configureCell(task: tasks[indexPath.row])
        return cell
    }
}
