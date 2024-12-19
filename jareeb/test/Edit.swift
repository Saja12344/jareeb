//
//  Edit.swift
//  jarb
//
//  Created by saja khalid on 15/06/1446 AH.
//

import SwiftUI

struct Edit: View {
    // Local State for selected interests
    @State private var selectedInterests: Set<String> = []
    @Environment(\.presentationMode) var presentationMode
    
    let interests = [
        "كرة القدم", "كرة التنس", "يوغا", "كرة السلة", "فنون قتالية",
        "رسم", "ركوب الخيل", "الخط العربي", "مطاعم", "مقاهي",
        "كتب", "سباحة", "بودكاست", "تصوير", "ألعاب"
    ]
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
      
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                // Title
                Text("عدل مجالات إهتماماتك")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                // Grid of Interests
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(interests, id: \.self) { interest in
                            Circle()
                                .fill(selectedInterests.contains(interest) ? Color.blue.opacity(0.5) : Color.gray.opacity(0.3))
                                .frame(width: 100, height: 100)
                                .overlay(
                                    Text(interest)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                        .padding(6)
                                )
                                .onTapGesture {
                                    if selectedInterests.contains(interest) {
                                        selectedInterests.remove(interest)
                                    } else {
                                        selectedInterests.insert(interest)
                                    }
                                }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
                
                
                HStack{
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("حفظ")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(10)
                        
                        
                    }
            
                    
                    
                }
                .padding()
            }}
                .padding(.horizontal)
//                .navigationBarBackButtonHidden(true) // Hides the default back button
                
            }}
        
    
    

struct Edit_Previews: PreviewProvider {
    static var previews: some View {
        Edit()
    }
}

