//
//  PartyCell.swift
//  PartyRock
//
//  Created by Loyd Vallot on 4/14/17.
//  Copyright © 2017 Loyd's Productions. All rights reserved.
//

import UIKit


class PartyCell: UITableViewCell {

    @IBOutlet weak var VidImage: UIImageView!
    @IBOutlet weak var VidTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock)
    {
        VidTitle.text = partyRock.vidTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync
                {
                self.VidImage.image = UIImage(data: data)
                }
            }
            catch{
                //handle error
            }
        }
        
    }
}
