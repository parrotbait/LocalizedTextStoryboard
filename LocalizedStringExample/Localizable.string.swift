//
//  Localizable.string.swift
//  LocalizedStringExample
//
//  Created by Eddie Long on 09/03/2020.
//  Copyright © 2020 Eddie Long. All rights reserved.
//

import Foundation

protocol Localizable {
    var localized: String? { get }
}

extension String: Localizable {
    var localized: String? {
        localizedString(self)
    }
}

func localizedString(_ key: String?, placeholder: String? = nil, logError: Bool = true) -> String? {
    guard let key = key else { return nil }
    let res = NSLocalizedString(key, value: "", comment: "")
    #if DEBUG
        if logError, res.isEmpty || res == key {
            print("String '\(key)' NOT FOUND **")
        }
    #endif
    if res.isEmpty || res == key {
        return placeholder
    }
    return res
}
