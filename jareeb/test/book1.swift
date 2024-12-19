//
//  book1.swift
//  try
//
//  Created by Raghad on 11/06/1446 AH.
//

import SwiftUI

struct book1: View {
    @State private var selectedTab = 0 // لتحديد علامة التبويب النشطة

    var body: some View {
        VStack {
            
            ZStack{
                Image("backg")
                    .resizable()
                // .scaledToFill()
                    .frame(width: 400, height:430)
                    .cornerRadius(10)
                    .clipped()
                    .padding(.top, 60.0) // إزاحة الصورة لأسفل
                    .ignoresSafeArea()
                // صورة في الأعلى مع إزاحتها للأسفل
                Image("spid") // استبدل باسم الصورة المناسبة
               
                    .resizable()
                // .scaledToFill()
                    .frame(width: 300, height:360)
                    .clipped()
                    .padding(.top, 150.0) // إزاحة الصورة لأسفل
                    .ignoresSafeArea()
                    .cornerRadius(10)
                  
            }
                // قسم المعلومات
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(height: UIScreen.main.bounds.height * 0.6)
                        .overlay(
                            VStack(alignment: .leading, spacing: 00) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.white)
                                        .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 5)
                                        .frame(width: UIScreen.main.bounds.width - 0, height: 620)
                               
                                    
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("شبكة العنكبوت")                                    .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.blue)
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding(.trailing, 14.0)
                                        
                                        HStack {
                                        
                                            
                                            Text("المؤلف: أسامة المسلم")
                                                .font(.subheadline)
                                                .foregroundColor(.gray)
                                              .padding(.trailing, 5.0)
                                            
                                            Image(systemName: "person.fill")
                                                .foregroundColor(.yellow)
                                                .padding(.trailing, 10.0)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 10.0)

                                        Text("ريح بالك واقرأ شبكة العنكبوت ، من اقتراحنا لك")
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
                                    واية شبكة العنكبوت للكاتب السعودي أسامة المسلم، في هذه الرواية الشر هو الأقوى! مليئة بالأحداث المشوقة والوحشية والمرعبة، بداية الرواية تتحدث عن ثلاث فتيات يذهبن لزيارة صديقتهن "منى" وفي أثناء جلوسهن معًا يبدأن عن السؤال عن أمراة غريبة لكشف سر تعلّق أم منى بها، ليكتشفن الكثير من الأحداث المرعبة وتدور حول مشاعر الخوف و التوتر و الحزن والصدمة
                                    """)
                                        .font(.body)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.trailing)
                                        .padding(.horizontal, 20)
                                        .padding(.bottom, 170.0)

                                    }
                                    .padding([.bottom, .trailing], 15)
                                }
                                .padding(.horizontal, 10)
                            }
                        )
                    
                    Spacer()
                    
                    // شريط التنقل السفلي مرفوع للأعلى
                    
//                        .padding(10)
//                        .background(
//                            RoundedRectangle(cornerRadius: 30)
//                                .fill(Color.white)
//                                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 2)
//                        )
                        .padding(.horizontal, 30)
                        .padding(.bottom, 120) // رفع شريط التبويب قليلاً
                        .frame(height: 60)
                }
                .animation(.easeInOut, value: selectedTab)
            }}}


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

struct book1_Previews: PreviewProvider {
    static var previews: some View {
        book1()
    }
}
