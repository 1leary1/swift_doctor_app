import Foundation
import SwiftUI

class FontStyles{
    static var helloTextStyle = Font.custom("Poppins-Regular", size: 16)
    static var nameTextStyle = Font.custom("Poppins-Bold", size: 20).weight(.bold)
    static var doctorNameStyle = Font.custom("Poppins", size: 16)
        .weight(.bold)
    static var doctorPostStyle = Font.custom("Poppins", size: 14)
    static var middleSizeStyle = Font.custom("Poppins", size: 15)
    static var datetimeStyle = Font.custom("Poppins", size: 12)
    static var nearDoctorStyle = Font.custom("Poppins", size: 16)
        .weight(.semibold)
}
