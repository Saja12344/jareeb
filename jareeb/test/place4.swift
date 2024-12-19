//
//  place4.swift
//  jarb
//
//  Created by saja khalid on 13/06/1446 AH.
//

import SwiftUI
struct place4: View {
@State private var selectedTab = 0 // لتحديد علامة التبويب النشطة

var body: some View {
    VStack {
        // Top Image
        Image("mrthon2") // Replace with the name of your image asset
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width, height: 400.354)
            .clipped()
            .ignoresSafeArea()

        // Title and Info Section
       RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: UIScreen.main.bounds.height * 0.5)
            .overlay(
                VStack(alignment: .leading, spacing: 15) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .shadow(color: .gray.opacity(0.2), radius: 20, x: 0, y: 2)
                            .frame(width: UIScreen.main.bounds.width - 0, height: 550)
                            .offset(y: -0) // جعل المستطيل يغطي جزءًا أكبر من الصورة

                        VStack(alignment: .leading, spacing: 20) {
                            Text( "مارثون الرياض   ")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 10.0)
                                .padding(.top, 20)//50
                            
                            HStack {
                                
                                
                                //.padding()
                                Text("الرياض - حي النسيم")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Image(systemName: "location.fill")
                                    .foregroundColor(.yellow)

                            .padding(.trailing, 30)

                                
                                Text("10 نوفمبر")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(.yellow)

                            }
                        
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 20)

                            Text("ريح بالك وجرب المارثون ، من اقتراحنا لك")
                                .font(.body)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 20)

                            Divider()

                            Text("معلومات عامة")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 20)

                            Text("""
                            ماراثون الرياض هو حدث رياضي سنوي يقام في العاصمة السعودية الرياض. يعتبر هذا الحدث من أهم الماراثونات في المنطقة، ويجذب آلاف المشاركين من داخل المملكة وخارجها. 


                            """)
                            .font(.body)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 10) .padding(.bottom, 170.0)
                        }
                        .padding(15)
                        .frame(maxHeight: .infinity, alignment: .top) // رفع النصوص للأعلى
                    }
                    .padding(.horizontal, 20)
                }
            )

        Spacer()


        .padding(.horizontal, 30)
        .padding(.bottom, 160) // رفع شريط التبويب قليلاً
        .frame(height: 60)
    }
    .animation(.easeInOut, value: selectedTab)
}
}



struct place4_Previews: PreviewProvider {
static var previews: some View {
    place4()
}
}
