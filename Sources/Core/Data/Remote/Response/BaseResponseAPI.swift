//
//  File.swift
//  
//
//  Created by Iqbal Nur Haq on 03/06/23.
//

import Foundation

public struct BaseResponseAPI<T: Decodable> : Decodable {
    private enum CodingKeys: String, CodingKey {
        case code
        case success
        case message
        case data
    }
    
    let code: String
    let success: Bool
    let message: String
    let data: T?
}
