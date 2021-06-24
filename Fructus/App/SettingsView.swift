//
//  SettingsView.swift
//  Fructus
//
//  Created by Ricardo Santos on 13/06/21.
//

import SwiftUI

struct SettingsView: View {

    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, bitamins and much more.")
                                .font(.footnote)
                        }
                    } //: GroupBox
                    
                    // MARK: - Section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggling the button bellow")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            Text("Restart".uppercased())
                        }
                    }
                    
                    // MARK: - Section 3
                    GroupBox (label:
                    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "Developer", content: "Ricardo")
                        SettingsRowView(name: "Designer", content: "Ricardo Santos")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "MyPersonalSite", linkDestination: "www.google.com")
                        SettingsRowView(name: "Instagram", linkLabel: "@rickgiometti", linkDestination: "www.instagram.com")
                        SettingsRowView(name: "Fructus Verion", content: "1.0.0")
                        SettingsRowView(name: "SwiftUI Verion", content: "2.0")
                    }
                    
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        })
                .padding()
            } //: ScrollView
            
        } //: NavigationView
    }
}







struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
