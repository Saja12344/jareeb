import SwiftUI

//extension Color {
//    init(hex: String) {
//        let scanner = Scanner(string: hex)
//        scanner.currentIndex = hex.startIndex
//        var rgb: UInt64 = 0
//        scanner.scanHexInt64(&rgb)
//        
//        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
//        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
//        let blue = Double(rgb & 0x0000FF) / 255.0
//        
//        self.init(red: red, green: green, blue: blue)
//    }
//}



//extension Color {
//    init(hex: String) {
//        let scanner = Scanner(string: hex)
//        scanner.currentIndex = hex.startIndex
//        var rgb: UInt64 = 0
//        scanner.scanHexInt64(&rgb)
//
//        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
//        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
//        let blue = Double(rgb & 0x0000FF) / 255.0
//
//        self.init(red: red, green: green, blue: blue)
//    }
//}

struct FreeTimeView: View {
    @State private var startTime = Date()
    @State private var endTime = Date()
    @State private var selectedDays: [String] = []
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
            ZStack{
                Color(hex: "8AC3F2")
                    .ignoresSafeArea()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.white)
                        .padding(.top, 230.0)
                        .frame(width:400 ,height:900)
                    VStack {
                        
                        
                        Text("نحتاج نعرف عنك أكثر !!")
                            .font(.system (size:30))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.trailing)
                            .padding(.top, 180.0)
                        
                        Text("متى وقت فراغك؟")
                            .font(.system (size:24))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                            .padding(.top)
                        
                            .padding(.leading,180)
                        
                        
                        
                        
                        HStack(spacing: 0) {
                            // First HStack for "من:" and DatePicker for start time
                          
                            // Second HStack for "إلى:" and DatePicker for end time
                            HStack(spacing: 0) {
                                
                                DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
                                    .labelsHidden()
                                    .environment(\.locale, Locale(identifier: "ar"))
                                    .padding(10)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.blue.opacity(0.4), lineWidth: 2)
                                    )
                                
                                    .frame(width: 130) // Adjust the width for consistency
                                Text("إلى:")
                                    .font(.headline)
                                    .frame(width: 50, alignment: .leading) // Ensure proper alignment for "إلى:"
                            }
                            
                            HStack(spacing: 0) {
                                
                                
                                DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
                                    .labelsHidden()
                                    .environment(\.locale, Locale(identifier: "ar"))
                                    .padding(10)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color.blue.opacity(0.4), lineWidth: 2) // Soft blue border
                                    )
                                
                                    .frame(width: 130) // Adjust the width for consistency
                                Text("من:")
                                    .font(.headline)
                                    .frame(width: 50, alignment: .leading) // Ensure proper alignment for "من:"
                                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2) // Adding shadow effect
                                
                            }
                            
                            
                        }
                        .padding(.leading, 10) // Adjust the padding for better alignment
                        
                        .padding()
                        
                        
                        
                        
                        
                        
                        
                        
                        //                    VStack(spacing: 20) {
                        //                        HStack {
                        //
                        //                            DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
                        //                                .labelsHidden()
                        //                                .environment(\.locale, Locale(identifier: "ar"))
                        //                            Text("من:")
                        //                        }
                        //
                        //                        HStack {
                        //
                        //                            DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
                        //                                .labelsHidden()
                        //                                .environment(\.locale, Locale(identifier: "ar"))
                        //                            Text("إلى:")
                        //                        }
                        //                    }
                        //                    .padding()
                        //                    .padding(.leading,200)
                        
                        
                        Text("اختر الأيام:")
                            .font(.headline)
                            .padding(.vertical)
                            .padding(.leading,270)
                        
                        HStack(spacing: 2.1) {
                            ForEach(["احد", "اثنين", "ثلاثاء", "اربعاء","خميس" ,"جمعة","سبت" ], id: \.self) { day in
                                DayButton(day: day, isSelected: selectedDays.contains(day)) {
                                    if selectedDays.contains(day) {
                                        selectedDays.removeAll { $0 == day }
                                    } else {
                                        selectedDays.append(day)}}}}
                        
                        
                        // أزرار التنقل
//                        HStack {
//                            // Back Button
//                            NavigationLink(destination:welcome3()) {
//                                Text("السابق")
//                                    .font(.headline)
//                                    .foregroundColor(.gray)
//                                    .frame(maxWidth: .infinity)
//                                    .padding()
//                                    .background(Color.gray.opacity(0.2))
//                                    .cornerRadius(10)
//                            }
//                            
//                            // Next Button
//                            NavigationLink(destination: InterestsView()) {
//                                Text("التالي")
//                                    .font(.headline)
//                                    .foregroundColor(.white)
//                                    .frame(maxWidth: .infinity)
//                                    .padding()
//                                    .background(Color.yellow)
//                                    .cornerRadius(10)
//                            }}
                        
                        HStack{
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Text("السابق")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                            }
                            
                            
                            // Next Button
                            NavigationLink(destination:InterestsView()) {
                                Text("التالي")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.top,35)
                        .padding(.horizontal, 15.0)
                    }
//                    .padding(.horizontal, 10.0)
                    .navigationBarBackButtonHidden(true)
                            
                        .padding()
                    }

                
                ZStack{
                    Image("time")
                        .padding(.bottom, 560.0)
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                }}}
    
    struct DayButton: View {
        let day: String
        let isSelected: Bool
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Text(day)
                    .font(.subheadline)
                    .padding(10)
                    .background(isSelected ? Color.blue.opacity(0.4) : Color.gray.opacity(0.2))
                    .foregroundColor(isSelected ? .white : .black)
                    .animation(.easeInOut(duration: 0.5), value: isSelected) // Smooth animation when tapped
                    .cornerRadius(13)
            }}}}







struct FreeTimeView_Previews: PreviewProvider {
    static var previews: some View {
        FreeTimeView()
    }
}



//
//struct FreeTimeView: View {
//    @State private var startTime = Date()
//    @State private var endTime = Date()
//    @State private var selectedDays: [String] = []
//    
//    
//    var body: some View {
//            ZStack{
//                Color(hex: "8AC3F2")
//                    .ignoresSafeArea()
//                
//                ZStack{
//                    RoundedRectangle(cornerRadius: 40)
//                        .fill(Color.white)
//                        .padding(.top, 230.0)
//                        .frame(width:400 ,height:900)
//                    VStack {
//                        
//                        
//                        Text("نحتاج نعرف عنك أكثر !!")
//                            .font(.system (size:30))
//                            .fontWeight(.semibold)
//                            .multilineTextAlignment(.trailing)
//                            .padding(.top, 180.0)
//                        
//                        Text("متى وقت فراغك؟")
//                            .font(.system (size:24))
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.trailing)
//                            .padding(.top)
//                        
//                            .padding(.leading,180)
//                        
//                        
//                        
//                        
//                        VStack(spacing: 20) {
//                            // First HStack for "من:" and DatePicker for start time
//                            HStack(spacing: 10) {
//                                
//                                
//                                DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
//                                    .labelsHidden()
//                                    .environment(\.locale, Locale(identifier: "ar"))
//                                    .padding(10)
//                                    .background(Color.white)
//                                    .cornerRadius(10)
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 12)
//                                            .stroke(Color.blue.opacity(0.4), lineWidth: 2) // Soft blue border
//                                    )
//                                
//                                    .frame(width: 150) // Adjust the width for consistency
//                                Text("من:")
//                                    .font(.headline)
//                                    .frame(width: 50, alignment: .leading) // Ensure proper alignment for "من:"
//                                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2) // Adding shadow effect
//                                
//                            }
//                            
//                            // Second HStack for "إلى:" and DatePicker for end time
//                            HStack(spacing: 10) {
//                                
//                                DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
//                                    .labelsHidden()
//                                    .environment(\.locale, Locale(identifier: "ar"))
//                                    .padding(10)
//                                    .background(Color.white)
//                                    .cornerRadius(10)
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 10)
//                                            .stroke(Color.blue.opacity(0.4), lineWidth: 2)
//                                    )
//                                
//                                    .frame(width: 150) // Adjust the width for consistency
//                                Text("إلى:")
//                                    .font(.headline)
//                                    .frame(width: 50, alignment: .leading) // Ensure proper alignment for "إلى:"
//                            }}
//                        .padding(.leading, 140) // Adjust the padding for better alignment
//                        
//                        .padding()
//                        
//                        
//                        
//                        
//                        
//                        
//                        
//                        
//                        //                    VStack(spacing: 20) {
//                        //                        HStack {
//                        //
//                        //                            DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
//                        //                                .labelsHidden()
//                        //                                .environment(\.locale, Locale(identifier: "ar"))
//                        //                            Text("من:")
//                        //                        }
//                        //
//                        //                        HStack {
//                        //
//                        //                            DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
//                        //                                .labelsHidden()
//                        //                                .environment(\.locale, Locale(identifier: "ar"))
//                        //                            Text("إلى:")
//                        //                        }
//                        //                    }
//                        //                    .padding()
//                        //                    .padding(.leading,200)
//                        
//                        
//                        Text("اختر الأيام:")
//                            .font(.headline)
//                            .padding(.vertical)
//                            .padding(.leading,270)
//                        
//                        HStack(spacing: 2.1) {
//                            ForEach(["احد", "اثنين", "ثلاثاء", "اربعاء","خميس" ,"جمعة","سبت" ], id: \.self) { day in
//                                DayButton(day: day, isSelected: selectedDays.contains(day)) {
//                                    if selectedDays.contains(day) {
//                                        selectedDays.removeAll { $0 == day }
//                                    } else {
//                                        selectedDays.append(day)}}}}
//                        
//                        
//                        // أزرار التنقل
//                        HStack {
//                            // Back Button
//                            NavigationLink(destination:welcome3()) {
//                                Text("السابق")
//                                    .font(.headline)
//                                    .foregroundColor(.gray)
//                                    .frame(maxWidth: .infinity)
//                                    .padding()
//                                    .background(Color.gray.opacity(0.2))
//                                    .cornerRadius(10)
//                            }
//                            
//                            // Next Button
//                            NavigationLink(destination: InterestsView()) {
//                                Text("التالي")
//                                    .font(.headline)
//                                    .foregroundColor(.white)
//                                    .frame(maxWidth: .infinity)
//                                    .padding()
//                                    .background(Color.yellow)
//                                    .cornerRadius(10)
//                            }}
//                            
//                        .padding(.top,20)
//                        .padding()
//                    }}
//                .padding()
//                
//                ZStack{
//                    Image("time")
//                        .padding(.bottom, 560.0)
//                        .scaledToFit()
//                        .frame(width: 300, height: 300)
//                }}}
//    
//    struct DayButton: View {
//        let day: String
//        let isSelected: Bool
//        let action: () -> Void
//        
//        var body: some View {
//            Button(action: action) {
//                Text(day)
//                    .font(.subheadline)
//                    .padding(10)
//                    .background(isSelected ? Color.black.opacity(0.6) : Color.gray.opacity(0.2))
//                    .foregroundColor(isSelected ? .white : .black)
//                    .animation(.easeInOut(duration: 0.5), value: isSelected) // Smooth animation when tapped
//                    .cornerRadius(13)
//            }}}}
//
//
//
//
//
//
//
//struct FreeTimeView_Previews: PreviewProvider {
//    static var previews: some View {
//        FreeTimeView()
//    }
//}
