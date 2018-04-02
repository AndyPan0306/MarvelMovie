//
//  MovieTableViewController.swift
//  MarvelMovie
//
//  Created by AndyPan on 2018/3/31.
//  Copyright © 2018年 Andy Pan. All rights reserved.
//

import UIKit
import SafariServices

class MovieTableViewController: UITableViewController {

    var sectionTitles = ["Iron Man","Captain America","Thor","Hulk","Avengers","Guardians of the Galaxy","Ant Man","Doctor Strange","Spider Man","Black Panther"]
    
    var sectionContents = [
                            [
                                (image:"鋼鐵人 Iron Man",text:"鋼鐵人",link:"https://www.youtube.com/watch?v=8hYlB38asDY"),
                                (image:"鋼鐵人 Iron Man2",text:"鋼鐵人2",link:"https://www.youtube.com/watch?v=oOzuBOefL8I"),
                                (image:"鋼鐵人 Iron Man3",text:"鋼鐵人3",link:"https://www.youtube.com/watch?v=f_h95mEd4TI&index=31&list=PLK5HARgNfgj9xRBC52Z7YRIXW2GCD99OT")
                            ],
                            [
                                (image:"美國隊長1",text:"美國隊長",link:"https://www.youtube.com/watch?v=JerVrbLldXw&index=21&list=PLAC80B20A14E9D8B1"),
                                (image:"美國隊長2：酷寒戰士",text:"美國隊長2：酷寒戰士",link:"https://www.youtube.com/watch?v=tbayiPxkUMM"),
                                (image:"美國隊長3：英雄內戰",text:"美國隊長3：英雄內戰",link:"https://www.youtube.com/watch?v=43NWzay3W4s&list=PLK5HARgNfgj-cuVJ8e3XrMRFtl-JE0uiQ&index=33")
                            ],
                            [
                                (image:"雷神索爾1",text:"雷神索爾",link:"https://www.youtube.com/watch?v=JOddp-nlNvQ&index=19&list=PLF1F868F2CA303919"),
                                (image:"雷神索爾2：黑暗世界",text:"雷神索爾2：黑暗世界",link:"https://www.youtube.com/watch?v=cltIcTPrHQk&list=PLK5HARgNfgj9VWsmb80Izz5cknzo5KM3w&index=16"),
                                (image:"雷神索爾3：諸神黃昏",text:"雷神索爾3：諸神黃昏",link:"https://www.youtube.com/watch?v=v7MGUNV8MxU&list=PLK5HARgNfgj8EwQcjz6yTvtPcA5fQowHc")
                            ],
                            [
                                (image:"無敵浩克",text:"無敵浩克",link:"https://www.youtube.com/watch?v=xbqNb2PFKKA")
                            ],
                            [
                                (image:"復仇者聯盟1",text:"復仇者聯盟",link:"https://www.youtube.com/watch?v=eOrNdBpGMv8&index=15&list=PL89EC0A37171076D8"),
                                (image:"復仇者聯盟2：奧創紀元",text:"復仇者聯盟2：奧創紀元",link:"https://www.youtube.com/watch?v=tmeOjFno6Do"),
                                (image:"復仇者聯盟3：無限之戰",text:"復仇者聯盟3：無限之戰",link:"https://www.youtube.com/watch?v=6ZfuNTqbHE8&index=2&list=PLK5HARgNfgj-a_TYA7ZvQQldbI6m9tFMA")
                            ],
                            [
                                (image:"星際異攻隊",text:"星際異攻隊",link:"https://www.youtube.com/watch?v=d96cjJhvlMA&index=76&list=PLK5HARgNfgj9Nzu9sVTzFzn1aPMm7aGlu"),
                                (image:"星際異攻隊2",text:"星際異攻隊2",link:"https://www.youtube.com/watch?v=dW1BIid8Osg&index=2&list=PLK5HARgNfgj_JcYEZdAuw59ohLPK8Dkwh")
                            ],
                            [
                                (image:"蟻人Movie",text:"蟻人",link:"https://www.youtube.com/watch?v=xInh3VhAWs8&index=57&list=PLK5HARgNfgj8P7WV6xvuVcZInRnqIy9Zd")
                            ],
                            [
                                (image:"奇異博士Movie",text:"奇異博士",link:"https://www.youtube.com/watch?v=Lt-U_t2pUHI&list=PLK5HARgNfgj9Io2PXblURA5_L5QD0zP3Z&index=34")
                            ],
                            [
                                (image:"蜘蛛人：返校日",text:"蜘蛛人：返校日",link:"https://www.youtube.com/watch?v=8wNgphPi5VM&index=1&list=PLK5HARgNfgj-h9eQ2KJRxanbw4QT9EsEs")
                            ],
                            [
                                (image:"黑豹",text:"黑豹",link:"https://www.youtube.com/watch?v=xjDjIWPwcPU&list=PLK5HARgNfgj-ALIa2xPLXBzX8Vq9OoUU6")
                            ],
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sectionContents[section].count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        // Configure the cell...
        
        let cellData = sectionContents[indexPath.section][indexPath.row]
        cell.textLabel?.text = cellData.text
        cell.imageView?.image = UIImage(named: cellData.image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let link = sectionContents[indexPath.section][indexPath.row].link
        
        if let url = URL(string:link){
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            if let destinationController = segue.destination as? WebViewController,
                let indexPath = tableView.indexPathForSelectedRow{
                destinationController.targetURL = sectionContents[indexPath.section][indexPath.row].link
            }
            
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
