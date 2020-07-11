//
//  Service.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit

protocol Service: AnyObject {}

extension Service {
    func prettyPrint<T: Encodable>(model: T) {
        debugPrint("-------")
        let jsonEncoder = JSONEncoder()
        jsonEncoder.outputFormatting = .prettyPrinted
        do {
            let jsonData = try jsonEncoder.encode(model)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                debugPrint(jsonString)
            }
        } catch let err {
            debugPrint(err)
        }
        debugPrint("-------")
    }
}
