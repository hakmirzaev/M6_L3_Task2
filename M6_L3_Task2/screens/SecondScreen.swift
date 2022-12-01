//
//  SecondScreen.swift
//  M6_L3_Task2
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

struct SecondScreen: View {
    @EnvironmentObject var setting: UserSetting
    var body: some View {
        VStack{
            Text("Email: \(setting.email)").padding()
            Text("Password: \(setting.password)").padding()
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
