import Foundation
import SwiftUI

struct SearchBarView: View {
    @State private var search: String = ""
    var body: some View{
        HStack(alignment: .center, spacing: 12) {
            
            Image("search").resizable().frame(width: 24, height: 24)
            
            TextField("Search doctor or health issue", text: $search)
                .font(FontStyles.middleSizeStyle)
              .foregroundColor(Colors.searchTextColor)
            
            Spacer()
        }
        .padding(16)
        .frame(width: .infinity, alignment: .leading)
        .background(Colors.searchBarColor)
        .cornerRadius(12)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
