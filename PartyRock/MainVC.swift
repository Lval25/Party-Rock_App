//
//  ViewController.swift
//  PartyRock
//
//  Created by Loyd Vallot on 3/14/17.
//  Copyright © 2017 Loyd's Productions. All rights reserved.
//

import UIKit

class MainVC: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView1: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imgURL: "https://yt3.ggpht.com/-isuhTXPcuUA/AAAAAAAAAAI/AAAAAAAAAAA/ZLK_0KyKOIc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", vidURl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4PnOPZU9V-w\" frameborder=\"0\" allowfullscreen></iframe>", vidTitle: "FIRST TIME PERFORMING BRAND NEW DAY!!! WILL WE FAIL?")
        
        let p2 = PartyRock(imgURL: "https://yt3.ggpht.com/-isuhTXPcuUA/AAAAAAAAAAI/AAAAAAAAAAA/ZLK_0KyKOIc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", vidURl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vjFCc3rp3l8\" frameborder=\"0\" allowfullscreen></iframe>", vidTitle: "RELATIONSHIP PROBLEMS! VINAI REMIX REVEALED!")
        
        let p3 = PartyRock(imgURL: "https://yt3.ggpht.com/-isuhTXPcuUA/AAAAAAAAAAI/AAAAAAAAAAA/ZLK_0KyKOIc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", vidURl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gOEmIq_0cpY\" frameborder=\"0\" allowfullscreen></iframe>", vidTitle: "REDFOO - BRAND NEW DAY (FULL AUDIO & LYRICS) NEW MUSIC!")
        
        let p4 = PartyRock(imgURL: "https://yt3.ggpht.com/-isuhTXPcuUA/AAAAAAAAAAI/AAAAAAAAAAA/ZLK_0KyKOIc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", vidURl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg?list=PLtM4rw7sjPKUe0YW6Fmrp2FSU7RxkX-JA\" frameborder=\"0\" allowfullscreen></iframe>", vidTitle: "Redfoo - Lights Out (Official 360° Music Video)")
        
        let p5 = PartyRock(imgURL: "https://yt3.ggpht.com/-isuhTXPcuUA/AAAAAAAAAAI/AAAAAAAAAAA/ZLK_0KyKOIc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", vidURl:
            "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Md-8YlE-KhA?list=PLtM4rw7sjPKUe0YW6Fmrp2FSU7RxkX-JA\" frameborder=\"0\" allowfullscreen></iframe>", vidTitle: "Redfoo - Booty Man (Official 360° Music Video)")
        
       
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        

        
        tableView1.delegate = self
        tableView1.dataSource = self
    }
    
    func tableView(_ tableView1: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView1.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            
        cell.updateUI(partyRock: partyRock)
            
            return cell
    }
        else{
            return UITableViewCell()
        }
    }
    func tableView(_ tableView1: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC{
            if let party = sender as? PartyRock{
                destination.partyRock = party
            }
        }
    }
    
}
