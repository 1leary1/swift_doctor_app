import Foundation
import SwiftUI

struct DoctorCardsView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 12) {
            Text(Strings.nearDoctorText)
                .font(FontStyles.nearDoctorStyle)
                .foregroundColor(Colors.doctorBottomCardNameColor)
            
            DoctorModel(photoImg: "doctor2", name: "Dr. Joseph Brostito", post: "Dental Specialist", distance: "1.2 KM", reviews: "4,8 (120 Reviews)", time: "Open at 17.00")
            
            DoctorModel(photoImg: "doctor1", name: "Dr. Imran Syahir", post: "General Doctor", distance: "1.2 KM", reviews: "4,7 (87 Reviews)", time: "Open at 17.00")
            
            DoctorModel(photoImg: "doctor2", name: "Dr. no 3", post: "Dentist", distance: "1.2 KM", reviews: "4,8 (120 Reviews)", time: "Open at 17.00")

        }
    }
}

struct DoctorCardsView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCardsView()
    }
}
