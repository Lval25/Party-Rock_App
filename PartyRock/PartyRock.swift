//
//  PartyRock.swift
//  PartyRock
//
//  Created by Loyd Vallot on 4/14/17.
//  Copyright © 2017 Loyd's Productions. All rights reserved.
//

import Foundation


class PartyRock
{
    private var _imageURL: String!
    private var _vidURL: String!
    private var _vidTitle: String!
    
    var imageURL: String{
        return _imageURL
    }
    
    var vidURL: String{
        return _vidURL
    }
    
    var vidTitle: String{
        return _vidTitle
    }
    
    init(imgURL: String, vidURl:String, vidTitle:String)
    {
        _imageURL = imgURL
        _vidURL = vidURl
        _vidTitle = vidTitle
    }
    
    
}
