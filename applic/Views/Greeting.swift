import Foundation
import SwiftUI

struct GreetingView: View {
    var body: some View{
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6)
            {
                Text(Strings.helloText).font(FontStyles.helloTextStyle).foregroundColor(Colors.helloTextColor)
                
                Text(Strings.nameText).font(FontStyles.nameTextStyle)
                    .foregroundColor(Colors.nameTextColor)

            }
            Spacer()
            Image("userProfileIcon").resizable().frame(width: 56, height: 56)
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
