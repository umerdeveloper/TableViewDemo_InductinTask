//
//  TableViewController.swift
//  TableViewDemo
//
//  Created by Umer Khan on 25/03/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    private let profileData = ProfileData()
    private let cellID: String = "profileCell"
    private var downloadedImage: UIImage = UIImage()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadImageWith(url: profileData.imageURL)
    }
    
    // MARK: - Data Source and Delegate
    
    override func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileData.returnNumberOfRows()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID , for: indexPath) as! TableViewCell
        cell.name.text = profileData.namesArray[indexPath.row]
        cell.desc.text = profileData.descArray[indexPath.row]
        cell.imageView?.image = downloadedImage
        return cell
    }
    
    // TODO: - Change color of alternate cell
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row % 2 == 0 { cell.backgroundColor = .lightGray }
        else { cell.backgroundColor = .white }
    }
    
    //MARK: - Networking
    func downloadImageWith(url: String) {
        guard let imgURL: URL = URL(string: profileData.imageURL) else { fatalError() }
        URLSession.shared.dataTask(with: imgURL) { (data, response, error) in
            // Check error or data empty
            if error != nil || data == nil { return }
            // load images in using main thread.
            DispatchQueue.main.async {
                if let data = data {
                    self.downloadedImage = UIImage(data: data)!
                    self.tableView.reloadData()
                }
            }
        } .resume()
    }
}
