import Foundation
import SwiftUI

struct DoctorModel: View{
    var photoImg: String
    var name: String
    var post: String
    var distance: String
    var reviews: String
    var time: String
    
    init(photoImg: String, name: String, post: String, distance: String, reviews: String, time: String) {
        
        self.photoImg = photoImg
        self.name = name
        self.post = post
        self.distance = distance
        self.reviews = reviews
        self.time = time
    }
    
    var body: some View{
        VStack(alignment: .center, spacing: 20) {
            HStack(){
                
                ZStack(){
                    Image(photoImg).resizable().frame(width: 47, height: 47).clipShape(Circle())
                }.background(Color.white).clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(name)
                        .font(FontStyles.doctorNameStyle)
                        .foregroundColor(Colors.doctorBottomCardNameColor)
                    Text(post)
                        .font(FontStyles.doctorPostStyle)
                        .foregroundColor(Colors.tagColor)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 8)
                {
                    Image("location").resizable()
                    .frame(width: 16, height: 16)
                    
                    Text(distance)
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                .frame(width: .infinity, height: 24, alignment: .center)
                
            }
            
            Image("separator").resizable().frame(width: 287, height: 1)
            
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("clock_yellow").resizable()
                    .frame(width: 16, height: 16)
                    
                    Text(reviews)
                      .font(FontStyles.datetimeStyle)
                      .foregroundColor(Colors.yellowColor)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 8) {
                    Image("clock_blue").resizable()
                    .frame(width: 16, height: 16)
                    
                    Text(time)
                      .font(FontStyles.datetimeStyle)
                      .foregroundColor(Colors.blueColor)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(width: .infinity, alignment: .top)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}

struct DoctorModelView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorModel(photoImg: "doctor2", name: "Dr. Joseph Brostito", post: "Dental Specialist", distance: "1.2 KM", reviews: "4,8 (120 Reviews)", time: "Open at 17.00")
    }
}
