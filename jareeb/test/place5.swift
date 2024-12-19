//
//  place5.swift
//  jarb
//
//  Created by saja khalid on 16/06/1446 AH.
//

import SwiftUI
struct place5: View {
@State private var selectedTab = 0 // لتحديد علامة التبويب النشطة

var body: some View {
    VStack {
        // Top Image
        Image("no2") // Replace with the name of your image asset
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
                            Text( " نور الرياض ")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 10.0)
                                .padding(.top, 20)//50
                            
                            HStack {
                                
                                
                                //.padding()
                                Text("الرياض - اماكن مختلفة  ")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Image(systemName: "location.fill")
                                    .foregroundColor(.yellow)

                            .padding(.trailing,5)

                                
                                Text("نوفمبر 28 - ديسمبر 14 ")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(.yellow)

                            }
                        
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 20)

                            Text("ريح بالك وجرب نور الرياض ، من اقتراحنا لك")
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
                            يجمع هذا الحدث بين الفن والضوء في تجربة فريدة 
                            من نوعها. و يهدف إلى تحويل المدينة إلى معرض فني مفتوح، حيث يتم عرض أعمال فنية ضوئية مبهرة على المباني والأماكن العامة، مما يخلق أجواءً ساحرة تجذب الزوار من داخل المملكة وخارجها.

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



struct place5_Previews: PreviewProvider {
static var previews: some View {
    place5()
}
}

