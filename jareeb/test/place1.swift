//
//  ContentView.swift
//  try
//
//  Created by Raneem on 07/06/1446 AH.
//

import SwiftUI

struct place1: View {
    @State private var selectedTab = 0 // لتحديد علامة التبويب النشطة

    var body: some View {
        VStack {
            // Top Image
            Image("urth-caffe-web") // Replace with the name of your image asset
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 415.354)
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
                                Text("إيرث كافيه")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing, 10.0)
                                    .padding(.top, 20)//50

                                HStack {
                                   
                                       
                                       //.padding()
                                    Text(" حي العقيق")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                       // .padding(.leading, 31.0)
                                    Image(systemName: "location.fill")
                                        .foregroundColor(.yellow)
                                      
                                }
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 20)

                                Text("ريح بالك وجرب إيرث، من اقتراحنا لك")
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
                                منذ تأسيس إيرث كافيه عام 1989 وهو يسعى لتقديم أفضل وأرقى تجارب الطهي للزبائن،ننصحك بتجربة الماتشا 
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

//struct TabButton: View {
//    var icon: String
//    var isSelected: Bool
//    var action: () -> Void
//
//    var body: some View {
//        Button(action: action) {
//            ZStack {
//                if isSelected {
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(Color.yellow)
//                        .frame(width: 70, height: 50)
//                }
//
//                Image(systemName: icon)
//                    .font(.system(size: 24, weight: .bold))
//                    .foregroundColor(isSelected ? .black : .gray)
//            }
//        }
//        .frame(maxWidth: .infinity)
//    }
//}

struct place1_Previews: PreviewProvider {
    static var previews: some View {
        place1()
    }
}
