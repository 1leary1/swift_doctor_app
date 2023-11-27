import Foundation
import SwiftUI

struct TagsView: View {
    var body: some View{
        HStack(alignment: .top, spacing: 13){
            TagsModel(imgName: "sun", text: "Covid 19")
            Spacer()
            TagsModel(imgName: "doctor", text: "Doctor")
            Spacer()
            TagsModel(imgName: "link", text: "Medicine")
            Spacer()
            TagsModel(imgName: "hospital", text: "Hospital")
        }.frame(width: .infinity)
    }
}

struct TagsView_Previews: PreviewProvider {
    static var previews: some View {
        TagsView()
    }
}
