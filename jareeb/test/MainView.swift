//
//  MainView.swift
//  test
//
//  Created by saja khalid on 09/06/1446 AH.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    @State private var selectedFilter: String="الكل"
    
    
    
    
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            ScrollView (.vertical , showsIndicators: false){
                // عنوان القسم
                Text("مقترحات اليوم:")
                    .font(.title)
                    .multilineTextAlignment(.trailing)
                    .bold()
                    .padding(.leading, 190.0)
                    .padding(.top, 10.0)
                
                
                
                // عرض الخيارات الرئيسية
                ScrollView (.horizontal, showsIndicators: false){
                    VStack(alignment: .leading) {
                        // عرض الخيارات الرئيسية
                        HStack {
                            
                            NavigationLink(destination:place3()){
                                SuggestionCard(title: "بلاك هات"
                                               , location:
                                                HStack {
                                    Text(" الرياض للمعارض")
                                    Image(systemName: "location.fill")
                                    // أو اسم أيقونة مخصصة
                                },
                                               date:
                                                HStack{
                                    Text("24 - 28 Nov     ")
                                    Image(systemName: "calendar")
                                    
                                } , imageName: "blackhat")}
                            // Add the icon here
                            
                            
                            NavigationLink(destination:place2()){
                                
                                SuggestionCard(title: " مسك للفنون", location:
                                                HStack {
                                    Text(" اماكن مختلفة")
                                    Image(systemName: "location.fill") // أو اسم أيقونة مخصصة
                                }, date:
                                                HStack{
                                    
                                    Text( " 5 - 10 Dec")
                                    Image(systemName: "calendar")
                                }, imageName: "misk" )}
                            
                            NavigationLink(destination:place5()){
                                
                                SuggestionCard(title: "  نور الرياض ", location:
                                                HStack {
                                    Text(" صالة الأمير للفنون")
                                    Image(systemName: "location.fill") // أو اسم أيقونة مخصصة
                                }, date:
                                                HStack{
                                    
                                    Text( "14 Dec - 28 Nov")
                                    Image(systemName: "calendar")
                                }, imageName: "nor" )}

                            
                        }}}
                
                
                VStack {
                    
                    Text("تصفح الاقتراحات")
                        .font(.title2)
                        .bold()
                        .padding(.top,12)
                    //                        .padding(.bottom,0)
                        .padding(.leading, 200.0)
                    
                    ScrollViewReader { proxy in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                FilterButton(title: "بودكاست", isSelected: selectedFilter == "بودكاست")
                                    .id("بودكاست")
                                    .onTapGesture {
                                        selectedFilter = "بودكاست"
                                        withAnimation {
                                            proxy.scrollTo("بودكاست", anchor: .center)}}
                                
                                FilterButton(title: "ثقافة", isSelected: selectedFilter == "ثقافة")
                                    .id("ثقافة")
                                    .onTapGesture {
                                        selectedFilter = "ثقافة"
                                        withAnimation {
                                            proxy.scrollTo("ثقافة", anchor: .center)}}
                                
                                FilterButton(title: "رياضة", isSelected: selectedFilter == "رياضة")
                                    .id("رياضة")
                                    .onTapGesture {
                                        selectedFilter = "رياضة"
                                        withAnimation {
                                            proxy.scrollTo("رياضة", anchor: .center)}}
                                
                                FilterButton(title: "كتب", isSelected: selectedFilter == "كتب")
                                    .id("كتب")
                                    .onTapGesture {
                                        selectedFilter = "كتب"
                                        withAnimation {
                                            proxy.scrollTo("كتب", anchor: .center)}}
                                
                                FilterButton(title: "فن", isSelected: selectedFilter == "فن")
                                    .id("فن")
                                    .onTapGesture {
                                        selectedFilter = "فن"
                                        withAnimation {
                                            proxy.scrollTo("فن", anchor: .center)}}
                                
                                FilterButton(title: "الكل", isSelected: selectedFilter == "الكل")
                                    .id("الكل")
                                    .onTapGesture {
                                        selectedFilter = "الكل"
                                        withAnimation {
                                            proxy.scrollTo("الكل", anchor: .center)  }}}
                            .padding(.bottom,10)
                        }}
                    
                    ScrollView (.horizontal , showsIndicators: false){
                        if selectedFilter == "الكل" {
                            VStack {
                                HStack {
                                    
                                    NavigationLink(destination:place2()){
                                        BookCard(title: "اسبوع مسك للفنون", author: "صالة الامير لللفنون", imageName: "misk")}
                                    
                                    NavigationLink(destination:place1()){
                                        BookCard(title: " ايرث كافيه ", author: "حي العقيق  ", imageName: "urth")}
                                    
                                    NavigationLink(destination: book2()){
                                        BookCard(title: "خوف", author: "أسامة المسلم", imageName: "kof")}
                                    
                                    NavigationLink(destination:book4()){
                                        BookCard(title: "لُج", author: "أسامة المسلم", imageName: "log")
                                    }
                                    NavigationLink(destination:place5()){
                                        BookCard(title: "  نور الرياض", author: " الرياض ", imageName: "nor")}
                                    NavigationLink(destination:place3()){
                                        BookCard(title: "بلاك هات", author: "الرياض للمعارض", imageName: "blackhat")
                                    }
                                    
                                    
                                    NavigationLink(destination: book1()){
                                        BookCard(title: "شبكة العنكبوت ", author: "أسامة المسلم", imageName: "spid")
                                    }
                                    
                                    
                                    NavigationLink(destination:place4()){
                                        BookCard(title: "مارثون الرياض",
                                                 author: "الرياض - حي النسيم", imageName: "mrthon")}
                                    
                                    NavigationLink(destination:book3()){
                                        BookCard(title: "نعمة عدم الكمال", author: "د. برينه بروان", imageName: "perf")
                                    }
                                    
                                }}
                            
                        } else if selectedFilter == "كتب" {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    NavigationLink(destination: book2()){
                                        BookCard(title: "خوف", author: "أسامة المسلم", imageName: "kof")}
                                    
                                    NavigationLink(destination:book4()){
                                        BookCard(title: "لُج", author: "أسامة المسلم", imageName: "log")
                                    }
                                    NavigationLink(destination:book3()){
                                        BookCard(title: "نعمة عدم الكمال", author: "د. برينه بروان", imageName: "perf")}
                                    
                                    NavigationLink(destination: book1()){
                                        BookCard(title: " شبكة العنكبوت", author: "أسامة المسلم", imageName: "spid")}
                                }}
                            
                        } else if selectedFilter == "ثقافة" {
                            HStack {
                                NavigationLink(destination:place3()){
                                    BookCard(title: "بلاك هات", author: "الرياض للمعارض", imageName: "blackhat")}
                                
                                NavigationLink(destination:place1()){
                                    BookCard(title: " ايرث كافيه ", author: "حي العقيق  ", imageName: "urth")}
                                NavigationLink(destination:place5()){
                                    BookCard(title: "  نور الرياض", author: " الرياض ", imageName: "nor")}
}
                            
                        } else if selectedFilter == "رياضة" {
                            HStack {
                                NavigationLink(destination:place4()){
                                    BookCard(title: "مارثون الرياض", author: "الرياض - حي النسيم", imageName: "mrthon")}}
                            
                        } else if selectedFilter == "فن" {
                            HStack {
                                NavigationLink(destination:place2()){
                                    BookCard(title: "اسبوع مسك للفنون", author: "صالة الامير لللفنون", imageName: "misk")}}
                            
                        } else if selectedFilter == "بودكاست" {
                            HStack {
                                NavigationLink(destination:book4()){
                                    BookCard(title: "ثمانية", author: "حاتم النجار", imageName: "thman")}}}}}}
            
            
            
            //            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)
            
        }
        
        
    }
    
}
    
    // بطاقة اقتراح رئيسية
    struct SuggestionCard: View {
        var title: String
        var location: HStack<TupleView<(Text, Image)>>
        var date: HStack<TupleView<(Text, Image)>>
        var imageName: String
        
        var body: some View {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame( width:160,height: 160 )
                    .cornerRadius(20)
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(Color.black)
                    .padding(.leading, 50.0)
                
                location
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, 6.0)
                
                date
                    .font(.caption)
                    .foregroundColor(.blue)
                    .padding(.leading, 27.0)
            }
            
            
            
            .frame(width: 150)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(16)}}
    
    
    
    
    
    
    // زر الفلتر
    //    struct FilterButton: View {
    //        var title: String
    //        var isSelected: Bool
    //        var action:()->Void
    //
    //        var body: some View {
    //            Button(action: {
    //                action()
    //            }){
    //                Text(title)
    //                    .padding(.vertical, 8)
    //                    .padding(.horizontal, 16)
    //                    .background(isSelected ? Color.yellow : Color(.systemGray5))
    //                    .foregroundColor(isSelected ? .black : .gray)
    //                    .cornerRadius(16)
    //            }
    //        }}
    
    struct FilterButton: View {
        var title: String
        var isSelected: Bool
        
        var body: some View {
            Text(title)
                .padding()
                .background(isSelected ? Color.yellow : Color(.gray.opacity(0.4)))
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(16)
//                .padding(3)
        }
    }
    
    
    // بطاقة كتاب
    //    struct BookCard: View {
    //        var title: String
    //        var author: String
    //        var imageName: String
    //
    //        var body: some View {
    //            VStack {
    //                Image(imageName)
    //                 .resizable()
    //                    .frame(width:130, height: 120)
    //                    .cornerRadius(22)
    //                Text(title)
    //                    .font(.headline)
    //                    .multilineTextAlignment(.trailing)
    //                Text(author)
    //                    .font(.footnote)
    //                    .foregroundColor(.gray)
    //            }
    //            .padding()
    //            .background(Color(.systemGray6))
    //            .cornerRadius(16)
    //        }
    //    }
struct BookCard: View {
    var title: String
    var author: String
    var imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .cornerRadius(22)
                .frame(width: 130, height: 120)
            Text(title)
                .font(.caption)
                .multilineTextAlignment(.trailing)
                .foregroundColor(.black)

            
            Text(author)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(16)
    }

}
    



    

        struct MainView_Previews: PreviewProvider {
            static var previews: some View {
                MainView()
                TabBar()

            }
        }

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
