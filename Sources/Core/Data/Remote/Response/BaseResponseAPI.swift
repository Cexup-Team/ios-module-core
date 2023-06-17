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
    
    public let code: String
    public let success: Bool
    public let message: String
    public let data: T?
}
