//
//  ThejasView.swift
//  First
//
//  Created by Thejas Raja Elandassery on 06/12/24.
//

import SwiftUI

struct ThejasView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, All! This app is made by Thejas Elandassery. This is my first app so please bear with me. It's a simple navigation from splash screen to home screen after 2 seconds.")
                    .padding()
                
                NavigationLink(destination: DetailView()) {
                    Text("Go to Next Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ThejasView()
}
