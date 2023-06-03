//
//  File.swift
//  
//
//  Created by Iqbal Nur Haq on 12/05/23.
//

import Foundation

public struct slcItemModel: Identifiable {
    public var id: Int
    public var code: String?
    public var name: String
    public var postal_code: String?
    
    
    public init(id: Int, code: String? = nil, name: String, postal_code: String? = nil) {
        self.id = id
        self.code = code
        self.name = name
        self.postal_code = postal_code
    }
}
