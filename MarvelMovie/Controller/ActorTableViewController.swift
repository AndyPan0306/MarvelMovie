//
//  ActorTableViewController.swift
//  MarvelMovie
//
//  Created by AndyPan on 2018/3/30.
//  Copyright © 2018年 Andy Pan. All rights reserved.
//

import UIKit
import SafariServices

class ActorTableViewController: UITableViewController {

    var sectionTitle = ["Actor"]
    
    var sectionsContent = [
                (images:"鋼鐵人",roleNames:"鋼鐵人",actorNames:"小勞勃·道尼",link:"https://zh.wikipedia.org/wiki/%E5%B0%8F%E5%8B%9E%E5%8B%83%C2%B7%E9%81%93%E5%B0%BC"),
                (images:"美國隊長",roleNames:"美國隊長",actorNames:"克里斯·伊凡",link:"https://zh.wikipedia.org/wiki/%E5%85%8B%E9%87%8C%E6%96%AF%C2%B7%E5%9F%83%E6%96%87%E6%96%AF"),
                (images:"雷神索爾",roleNames:"雷神索爾",actorNames:"克里斯·漢斯沃",link:"https://zh.wikipedia.org/wiki/%E5%85%8B%E9%87%8C%E6%96%AF%C2%B7%E6%B5%B7%E5%A7%86%E6%96%AF%E6%B2%83%E6%96%AF"),
                (images:"浩克",roleNames:"浩克",actorNames:"馬克·盧法洛",link:"https://zh.wikipedia.org/wiki/%E9%A9%AC%E5%85%8B%C2%B7%E9%B2%81%E6%B3%95%E6%B4%9B"),
                (images:"黑寡婦",roleNames:"黑寡婦",actorNames:"史嘉蕾·喬韓森",link:"https://zh.wikipedia.org/wiki/%E5%8F%B2%E5%98%89%E8%95%BE%C2%B7%E5%96%AC%E9%9F%93%E6%A3%AE"),
                (images:"鷹眼",roleNames:"鷹眼",actorNames:"傑瑞米·雷納",link:"https://zh.wikipedia.org/wiki/%E6%9D%B0%E7%91%9E%E7%B1%B3%C2%B7%E9%9B%B7%E7%BA%B3"),
                (images:"戰爭機器",roleNames:"戰爭機器",actorNames:"唐·奇鐸",link:"https://zh.wikipedia.org/wiki/%E5%94%90%C2%B7%E9%92%B1%E5%BE%B7%E5%B0%94"),
                (images:"洛基",roleNames:"洛基",actorNames:"湯姆·希德斯頓",link:"https://zh.wikipedia.org/wiki/%E6%B1%A4%E5%A7%86%C2%B7%E5%B8%8C%E5%BE%B7%E5%8B%92%E6%96%AF%E9%A1%BF"),
                (images:"海姆達爾",roleNames:"海姆達爾",actorNames:"伊卓瑞斯·艾巴",link:"https://zh.wikipedia.org/wiki/%E4%BC%8A%E5%BE%B7%E7%91%9E%E6%96%AF%C2%B7%E8%89%BE%E5%B0%94%E5%B7%B4"),
                (images:"尼克·福瑞",roleNames:"尼克·福瑞",actorNames:"山繆·傑克森",link:"https://zh.wikipedia.org/wiki/%E6%A3%AE%E5%A7%86%C2%B7%E7%A9%8D%E9%81%9C"),
                (images:"瑪莉亞·希爾",roleNames:"瑪莉亞·希爾",actorNames:"蔻碧·史莫德",link:"https://zh.wikipedia.org/wiki/%E7%A7%91%E6%AF%94%C2%B7%E6%96%AF%E9%A6%AC%E5%BE%97%E5%85%92"),
                (images:"小辣椒",roleNames:"維吉妮婭·波兹·小辣椒",actorNames:"葛妮絲·派特洛",link:"https://zh.wikipedia.org/wiki/%E6%A0%BC%E6%B8%A9%E5%A6%AE%E4%B8%9D%C2%B7%E5%B8%95%E7%89%B9%E7%BD%97"),
                (images:"獵鷹",roleNames:"獵鷹",actorNames:"安東尼·麥基",link:"https://zh.wikipedia.org/wiki/%E5%AE%89%E4%B8%9C%E5%B0%BC%C2%B7%E9%BA%A6%E5%87%AF"),
                (images:"巴奇",roleNames:"巴奇",actorNames:"賽巴斯汀·斯坦",link:"https://zh.wikipedia.org/wiki/%E8%B3%BD%E5%B7%B4%E6%96%AF%E6%B1%80%C2%B7%E6%96%AF%E5%9D%A6"),
                (images:"星爵",roleNames:"星爵",actorNames:"克里斯·普瑞特",link:"https://zh.wikipedia.org/wiki/%E5%85%8B%E9%87%8C%E6%96%AF%C2%B7%E6%99%AE%E7%91%9E%E7%89%B9"),
                (images:"葛摩菈",roleNames:"葛摩菈",actorNames:"柔伊·莎達娜",link:"https://zh.wikipedia.org/wiki/%E4%BD%90%E4%BC%8A%C2%B7%E7%B4%A2%E5%B0%94%E8%BE%BE%E5%A8%9C"),
                (images:"德克斯",roleNames:"德克斯",actorNames:"巴帝斯塔",link:"https://zh.wikipedia.org/wiki/%E5%B7%B4%E5%B8%9D%E6%96%AF%E5%A1%94"),
                (images:"格魯特",roleNames:"格魯特",actorNames:"馮·迪索",link:"https://zh.wikipedia.org/wiki/%E9%A6%AE%C2%B7%E8%BF%AA%E7%B4%A2"),
                (images:"火箭浣熊",roleNames:"火箭浣熊",actorNames:"布萊德利·庫柏",link:"https://zh.wikipedia.org/wiki/%E7%81%AB%E7%AE%AD%E6%B5%A3%E7%86%8A"),
                (images:"螳螂女",roleNames:"螳螂女",actorNames:"龐·克萊門捷夫",link:"hhttps://zh.wikipedia.org/wiki/%E5%BA%9E%C2%B7%E5%85%8B%E8%8E%B1%E9%97%A8%E6%8D%B7%E5%A4%AB"),
                (images:"涅布拉",roleNames:"涅布拉",actorNames:"凱倫·吉蘭",link:"https://zh.wikipedia.org/wiki/%E5%87%AF%E4%BC%A6%C2%B7%E5%90%89%E5%85%B0"),
                (images:"控訴者羅南",roleNames:"控訴者羅南",actorNames:"李·佩斯",link:"https://zh.wikipedia.org/wiki/%E6%9D%8E%C2%B7%E4%BD%A9%E6%96%AF"),
                (images:"收藏者",roleNames:"收藏者",actorNames:"班尼西歐·岱·托羅",link:"https://zh.wikipedia.org/wiki/%E7%8F%AD%E5%B0%BC%E8%A5%BF%E6%AD%90%C2%B7%E7%8B%84%E5%A5%A7%C2%B7%E6%89%98%E7%BE%85"),
                (images:"薩諾斯",roleNames:"薩諾斯",actorNames:"喬許·布洛林",link:"https://zh.wikipedia.org/wiki/%E5%96%AC%E8%A8%B1%C2%B7%E5%B8%83%E6%B4%9B%E6%9E%97"),
                (images:"幻視",roleNames:"幻視",actorNames:"保羅·貝特尼",link:"https://zh.wikipedia.org/wiki/%E4%BF%9D%E7%BE%85%C2%B7%E5%BD%BC%E7%89%B9%E5%B0%BC"),
                (images:"緋紅女巫",roleNames:"緋紅女巫",actorNames:"伊莉莎白·歐森",link:"https://zh.wikipedia.org/wiki/%E7%B7%8B%E7%B4%85%E5%A5%B3%E5%B7%AB"),
                (images:"快銀",roleNames:"快銀",actorNames:"亞倫·強森",link:"https://zh.wikipedia.org/wiki/%E4%BA%9E%E5%80%AB%C2%B7%E5%BC%B7%E6%A3%AE"),
                (images:"蟻人",roleNames:"蟻人",actorNames:"保羅·路德",link:"https://zh.wikipedia.org/wiki/%E4%BF%9D%E7%BE%85%C2%B7%E8%B7%AF%E5%BE%B7"),
                (images:"黃蜂女",roleNames:"黃蜂女",actorNames:"伊凡潔琳·莉莉",link:"https://zh.wikipedia.org/wiki/%E4%BC%8A%E4%B8%87%E6%9D%B0%E7%90%B3%C2%B7%E8%8E%89%E8%8E%89"),
                (images:"蜘蛛人",roleNames:"蜘蛛人",actorNames:"湯姆·霍蘭德",link:"https://zh.wikipedia.org/wiki/%E6%B1%A4%E5%A7%86%C2%B7%E8%B5%AB%E5%85%B0%E5%BE%B7"),
                (images:"奇異博士",roleNames:"奇異博士",actorNames:"班奈狄克·康柏拜區",link:"https://zh.wikipedia.org/wiki/%E7%8F%AD%E5%A5%88%E7%8B%84%E5%85%8B%C2%B7%E5%BA%B7%E6%9F%8F%E6%8B%9C%E5%8D%80"),
                (images:"王",roleNames:"王",actorNames:"黃凱旋",link:"https://zh.wikipedia.org/wiki/%E9%BB%83%E5%87%B1%E6%97%8B"),
                
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
        return sectionTitle.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sectionsContent.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActorCell", for: indexPath) as! ActorTableViewCell

        let cellData = sectionsContent[indexPath.row]
        cell.actorImage?.image = UIImage(named: cellData.images)
        cell.roleNameLabel?.text = cellData.roleNames
        cell.actorNameLabel?.text = cellData.actorNames


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let link = sectionsContent[indexPath.row].link
        
        
        guard let url = URL(string:link) else{
            return;
        }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            if let destinationController = segue.destination as? WebViewController,
                let indexPath = tableView.indexPathForSelectedRow{
                destinationController.targetURL = sectionsContent[indexPath.row].link
            }
            
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showWebView" {
//            if let destinationController = segue.destination as? WebViewController,
//                let indexPath = tableView.indexPathForSelectedRow{
//                destinationController.targetURL = sectionContent[indexPath.section][indexPath.row].link
//            }
//
//        }
//    }
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
