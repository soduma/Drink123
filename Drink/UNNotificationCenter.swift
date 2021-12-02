//
//  UNNotificationCenter.swift
//  Drink
//
//  Created by 장기화 on 2021/12/02.
//

import Foundation
import UserNotifications

extension UNUserNotificationCenter {
    func addNotificationRequest(by alert: Alert) {
        let content = UNMutableNotificationContent()
        content.title = "물 마실 시간이에요💦"
        content.body = "세계보건기구가 권장하는 하루 물 섭취량은 2L입니다."
        content.sound = .default
        content.badge = 1
        
        let component = Calendar.current.dateComponents([.hour, .minute], from: alert.date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: component, repeats: alert.isOn)
    }
}
