import SwiftUI

struct ContentView: View {
    var body: some View{
        ScrollView{
            VStack(alignment: .center, spacing: 20){
                GreetingView()
                SelectedDoctorView()
                SearchBarView()
                TagsView()
                DoctorCardsView()
            }.padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
