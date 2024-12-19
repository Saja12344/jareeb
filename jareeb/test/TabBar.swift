//
//  TabBar.swift
//  test
//
//  Created by saja khalid on 11/06/1446 AH.
//

//import SwiftUI
//
//
////    // لتحديد علامة التبويب النشطة
////    Bottom Navigation Bar
//struct TabBar:View {
//    @State private var selectedTab = 0 // لتتبع التبويب النشط
//    
//    var body: some View {
//        TabView {
//            // زر الهوم
//            MainView()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                    //                        CustomTabItem(iconName: "house.fill", isSelected: selectedTab == 0)
//                }
//            //                    .tag(0) // تعيين قيمة للتاب
//            
//            // زر المنيو
//            ContentView()
//                .tabItem {
//                    CustomTabItem(iconName: "list.bullet", isSelected: selectedTab == 1)
//                }
//                .tag(1) // تعيين قيمة للتاب
//        }
//        .navigationBarBackButtonHidden(true)
//        
//    }}
//
//
//    struct CustomTabItem: View {
//        var iconName: String
//        var isSelected: Bool
//        
//        var body: some View {
//            ZStack {
//                if isSelected {
//                    Circle()
//                        .fill(Color.black) // خلفية صفراء
////                        .frame(width: 40, height: 40)
//                }
//                Image(systemName: iconName)
//                    .foregroundColor(.blue) // الأيقونة سوداء دائمًا
//            }
//        }
//    }
//
//
//    struct TabBar_Previews: PreviewProvider {
//        static var previews: some View {
//            TabBar()
//        }
//    }
import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 0 // تتبع التبويب النشط
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
//                Spacer()
                // المحتوى بناءً على التبويب المحدد
                if selectedTab == 0 {
                    MainView()
                } else if selectedTab == 1 {
                    ContentView()
                }
                
                // Bottom Navigation Bar
                HStack {
                    Spacer()
                    CustomTabItem(iconName: "house.fill", isSelected: selectedTab == 0) {
                        selectedTab = 0
                    }
                    Spacer()
                    CustomTabItem(iconName: "line.horizontal.3", isSelected: selectedTab == 1) {
                        selectedTab = 1
                    }
                    Spacer()
                }
                .padding(.vertical, 30)
                .padding(.top,0)
//                .background(Color.white.shadow(radius: 0)) // خلفية الـ Bottom Bar
            }
            .edgesIgnoringSafeArea(.bottom)

        }}
}

struct CustomTabItem: View {
    var iconName: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                if isSelected {
                    Rectangle()
                        .fill(Color.yellow) // خلفية دائرية صفراء للتبويب النشط
                        .frame(width: 100, height: 70)
                        .cornerRadius(20)
                        .padding(.bottom,5)
                }
                Image(systemName: iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 28)
                    .foregroundColor(isSelected ? .white :
                            .gray) // لون الأيقونة
                    .padding(.bottom,5)
            }
        }
    }
}

// شاشات افتراضية للمحتوى
struct MainVieww: View {
    var body: some View {
        Text("Home View")
            .font(.largeTitle)
            .foregroundColor(.black)
    }
}

struct ContentVieww: View {
    var body: some View {
        Text("Menu View")
            .font(.largeTitle)
            .foregroundColor(.black)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
