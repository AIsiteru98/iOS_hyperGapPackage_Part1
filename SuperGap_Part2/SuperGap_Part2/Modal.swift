import SwiftUI

struct Modal: View {
    @State var isModalShowing = false
    
    var body: some View {
        VStack {
            Text("It's Mail Page")
            
            Button {
                isModalShowing.toggle()
            } label: {
                Text("Modal Show")
            }
        }
        .sheet(isPresented: $isModalShowing) {
            DetailView() // Call the DetailView inside the .sheet closure
                .onAppear() {
                    print(isModalShowing)
                }
                .onDisappear() {
                    print(isModalShowing)
                }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("IT'S DETAIL VIEW")
    }
}

#Preview {
    Modal()
}
