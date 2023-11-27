import Foundation
import SwiftUI

struct TagsModel: View{
    var imgName: String
    var text: String
    
    init(imgName: String, text: String) {
        self.imgName = imgName
        self.text = text
    }
    
    var body: some View{
        VStack(alignment: .center, spacing: 8) {
            Button{
            }label: {
                Image(imgName).resizable().frame(width: 24, height: 24)
            }.padding(24)
                .background(Colors.searchBarColor)
                .cornerRadius(100)
            Text(text)
                .font(FontStyles.middleSizeStyle)
                .foregroundColor(Colors.tagColor)
        }.frame(width: .infinity, height: .infinity)
    }
}
