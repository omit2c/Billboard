//
//  BillboardConfiguration.swift
//
//
//  Created by Hidde van der Ploeg on 01/07/2023.
//

import Foundation
import SwiftUI

public struct BillboardConfiguration {
    
    /// The URL pointing to the JSON in the `BillboardAdResponse` format.
    public let adsJSONURL: URL?
    
    /// Enable or disable haptics
    public let allowHaptics: Bool
    
    /// The duration of the advertisement
    public let duration: TimeInterval
    
    /// Provide a list of Apple ID's that you want to exclude from showing up (e.g. your own app)
    public let excludedIDs : [String]
    
    public init(adsJSONURL: URL? = URL(string:"https://billboard-source.vercel.app/ads.json"),
                allowHaptics: Bool = true,
                advertDuration: TimeInterval = 15.0, excludedIDs: [String] = []) {
        self.adsJSONURL = adsJSONURL
        self.allowHaptics = allowHaptics
        self.duration = advertDuration
        self.excludedIDs = excludedIDs
    }
}
