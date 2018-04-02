//
//  AboutTableViewController.swift
//  MarvelMovie
//
//  Created by AndyPan on 2018/3/30.
//  Copyright © 2018年 Andy Pan. All rights reserved.
//

import UIKit
import SafariServices

class AboutTableViewController: UITableViewController {

    var sectionTitles = ["Follow us","Others"]
    var sectionContent = [
                            [
                                (images:"facebook",text:"Facebook",link:"https://www.facebook.com/MarvelStudioTaiwan/"),
                                (images:"instagram",text:"Instagram",link:"https://www.instagram.com/marvel/"),(images:"twitter",text:"Twitter",link:"https://twitter.com/marvel")
                            ],
                            [
                                (images:"youtube",text:"YouTube",link:"https://www.youtube.com/user/MARVEL"),
                                (images:"store",text:"Marvel official",link:"https://marvel.com/")
                            ]
                        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //section Title設定
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return sectionTitles.count
    }

    //section content設定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return sectionContent[section].count
    }

    //設定Header的資料來源
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionTitles[section]
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell", for: indexPath)

        // Configure the cell...

        let cellData = sectionContent[indexPath.section][indexPath.row]
        cell.textLabel?.text = cellData.text
        cell.imageView?.image = UIImage(named: cellData.images)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let link = sectionContent[indexPath.section][indexPath.row].link
        
        switch indexPath.section {
        // Leave us feedback section
            case 0:
                if let url = URL(string:link){
                    UIApplication.shared.open(url)
                }
            

            case 1 :
                if indexPath.row == 0{
                        if let url = URL(string:link){
                            let safariController = SFSafariViewController(url: url)
                            present(safariController, animated: true, completion: nil)
                            
                        }
                }else if indexPath.row == 1{
                                performSegue(withIdentifier: "showWebView", sender: self)
                }
            default:
                break;
        }
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            if let destinationController = segue.destination as? WebViewController,
                let indexPath = tableView.indexPathForSelectedRow{
                destinationController.targetURL = sectionContent[indexPath.section][indexPath.row].link
            }
            
        }
    }


}
