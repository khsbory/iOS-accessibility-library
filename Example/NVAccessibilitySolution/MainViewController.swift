//
//  ViewController.swift
//  NVAccessibilitySolution
//
//  Created by suni on 11/22/2021.
//  Copyright (c) 2021 suni. All rights reserved.
//

import UIKit

enum VoiceOverMode {
    case none
    case running
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var exampleTitles: [String] = ["Drag&Drop Demo"]
    var exampleStoryBoardNames: [String] = ["DragNDrop"]
    var exampleStoryBoardIds: [String] = ["DragNDropMain"]
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setScreenTitle()
        self.initTableView()
    }
    
    
    //MARK: private func
    private func setScreenTitle() {
        self.title = "NVAccessibilitySolution Example"
    }
    
    private func initTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = 60
    }
    
    private func moveViewController(storyBoradName: String, storyBoardId: String) {
        let storyboard = UIStoryboard(name: storyBoradName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: storyBoardId)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
//MARK: UITableViewDelegate,UITableViewDataSource
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell else {
            fatalError("Expected a `\(MainTableViewCell.self)` but did not receive one.")
        }
        
        if exampleTitles.count > indexPath.row {
            cell.titleLabel.text = exampleTitles[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.exampleStoryBoardNames.count > indexPath.row && self.exampleStoryBoardIds.count > indexPath.row {
            self.moveViewController(storyBoradName: self.exampleStoryBoardNames[indexPath.row], storyBoardId: self.exampleStoryBoardIds[indexPath.row])
        }
    }
    
}
