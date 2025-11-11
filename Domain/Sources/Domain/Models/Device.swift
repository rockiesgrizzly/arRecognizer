//
//  Device.swift
//  Domain
//
//  Created by Josh MacDonald on 11/11/25.
//

import Foundation

struct Device {
        var id: String { UUID().uuidString }
        let name: String
        let status: String

        let temperature: Double?
        let set_point: Double?
        let unit: String?
        let fan_speed_rpm: Int?
        let flow_cfm: Int?
        let power_watts: Int?
        let dim_level_pct: Int?
}
