import SwiftUI

struct ContentView: View {
    @State private var shouldNavigate = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("walle") // Your custom image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Spacer()
                    .frame(height: 30)
                Text("Loading...")
            }
            .padding()
            .navigationDestination(isPresented: $shouldNavigate) {
                ThejasView()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    shouldNavigate = true
                }
            }
            .ignoresSafeArea()  // Add this to ignore safe area
        }
    }
}

#Preview {
    ContentView()
}
