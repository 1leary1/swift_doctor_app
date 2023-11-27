import Foundation
import SwiftUI

struct SelectedDoctorView: View {
    var body: some View{
        VStack(alignment: .center, spacing: 16) {
            HStack(){ //upper block with basic data
                
                ZStack(){
                    Image("doctor1").resizable().frame(width: 47, height: 47).clipShape(Circle())
                }.background(Color.white).clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(Strings.doctorNameText)
                        .font(FontStyles.doctorNameStyle)
                    Text(Strings.doctorPostText)
                        .font(FontStyles.doctorPostStyle)
                        .foregroundColor(Colors.doctorPostColor)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 0)
                {
                    Image("arrow-right").resizable()
                    .frame(width: 24, height: 24)
                }
                .padding(0)
                .frame(width: 24, height: 24, alignment: .center)
                
            }
            
            Image("separator").resizable().frame(width: 287, height: 1)
            
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar").resizable()
                    .frame(width: 16, height: 16)
                    
                    Text(Strings.dateText).font(FontStyles.datetimeStyle).foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 8) {
                    Image("clock").resizable()
                    .frame(width: 16, height: 16)
                    
                    Text(Strings.timeText)
                        .font(FontStyles.datetimeStyle)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(width: .infinity, alignment: .top)
        .background(VStack {
            Color(red: 0.28, green: 0.58, blue: 1)
        })
        .cornerRadius(12)
    }
}

struct SelectedDoctorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedDoctorView()
    }
}
