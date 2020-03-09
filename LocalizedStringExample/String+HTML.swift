//
//  String+HTML.swift
//  LocalizedStringExample
//
//  Created by Eddie Long on 09/03/2020.
//  Copyright © 2020 Eddie Long. All rights reserved.
//

import Foundation

extension String {
    public func containsHtml() -> Bool {
        range(of: "<[^>]*>", options: .regularExpression, range: nil, locale: nil) != nil
    }
}
