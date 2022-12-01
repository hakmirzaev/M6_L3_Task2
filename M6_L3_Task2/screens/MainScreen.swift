//
//  MainScreen.swift
//  M6_L3_Task2
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var setting: UserSetting
    var body: some View {
        NavigationView{
            VStack{
                TextField("Email", text: $setting.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $setting.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink(destination: SecondScreen(), label: {
                    Text("Show").frame(maxWidth: .infinity, maxHeight: 45)
                        .background(.blue).foregroundColor(.white)
                        .cornerRadius(8)
                })
            }.padding()
                .navigationBarTitle("Environment Object", displayMode: .inline)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
