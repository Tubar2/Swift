//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ricardo Santos on 12/06/21.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    private let fruits = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits){ fruit in
                FruitCardView(fruit: fruit)
            } //: ForEach
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}




struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
