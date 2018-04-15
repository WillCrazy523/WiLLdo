//
//  Category.swift
//  WiLLdo
//
//  Created by Chao Wang on 4/14/18.
//  Copyright © 2018 Chao Wang. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
    
}
