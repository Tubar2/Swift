//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ricardo Santos on 13/06/21.
//

import SwiftUI

struct SettingsRowView: View {

    // MARK: - Properties
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?

    // MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            Divider().padding(.vertical)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let text = content {
                    Text(text)
                } else {
                    HStack {
                        Link(linkLabel!, destination: URL(string: linkDestination!)!)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.red)
                    }
                }
                
            } //: HStack
        } //: VStack
    }
    
    // MARK: - Init(s)
    init(name: String, content: String) {
        self.name = name
        self.content = content
    }
    init(name: String, linkLabel: String, linkDestination: String) {
        self.name = name
        self.linkLabel = linkLabel
        self.linkDestination = linkDestination
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox {
            SettingsRowView(name: "Developer", content: "John / Jane")
            SettingsRowView(name: "Website", linkLabel: "@Ricardo", linkDestination: "www.google.com")
        }
        .preferredColorScheme(.dark)
    }
}
