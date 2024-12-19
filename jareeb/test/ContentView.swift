//
//  sss.swift
//  jarb
//
//  Created by saja khalid on 13/06/1446 AH.
//
import SwiftUI


struct ContentView: View {
    @State private var selectedDays: [String] = [] // Store selected weekdays
    @State private var startTime = Date()          // Start Time
    @State private var endTime = Date()            // End Time
    
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            ScrollView{
                Text("الاعدادات")
                    .font(.title)
                    .multilineTextAlignment(.trailing)
                    .bold()
                    .padding(.leading, 250.0)
                    .padding(.top, 20.0)
                
                
                // Section 1: Edit Interests
                Text("تعديل")
                    .padding(.top, 10.0)
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.leading, 330.0)
                NavigationLink(destination: Edit()) {
                    HStack {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(.gray)
                        Spacer()
                        Text(" الإهتمامات")
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                }
                .padding(.horizontal, 13.0)
                // Section 2: Time Picker (From - To)
                
                
                // Section 3: Select Weekdays
                Text("إختر الأيام")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.leading, 310.0)
                    .padding(.top, 40.0)
                
                VStack {
                    HStack(spacing: 5) {
                        ForEach(["أحد", "اثنين", "ثلاثاء", "أربعاء"
                                 , "خميس"
                                 ,
                                 "جمعة", "سبت"
                                ], id: \.self) { day in
                            DayButton(day: day, isSelected: selectedDays.contains(day)) {
                                toggleDaySelection(day: day)
                            }
                            
                        }
                    }
                    
                }
                .navigationBarBackButtonHidden(true)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                .padding(.horizontal, 10.0)
                
                
                
                
                
                
                
                Text("إختر الوقت")
                    .padding(.leading, 299.0)
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top, 40.0)
                
                HStack(spacing: 40) {
                    
                    HStack {
                        
                        
                        
                        DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                            .environment(\.locale, Locale(identifier: "ar"))
                            .frame(width: 0)
                        
                        Text("إلى:")
                        //                            .frame(width: 50, alignment: .leading)
                            .padding(.leading, 40.0)
                        
                    }
                    .padding(.leading, 50.0)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                    
                    
                    
                    
                    HStack {
                        
                        DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
                        
                            .environment(\.locale, Locale(identifier: "ar"))
                            .frame(width: 0)
                        
                        
                        Text("من:")
                            .padding(.leading, 40.0)
                        //                            .frame(width: 70)
                    }
                    .padding(.leading, 50.0)
                    
                    
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                    
                    
                }
                .padding(.horizontal, 16.0)
                
                
                
                
                
                
                // Save Button
                Spacer()
                Button(action: saveSettings) {
                    Text("حفظ")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .padding(.horizontal,60.0)
                .padding(.bottom, 60.0)
                .padding(.top,20)
            }
            //            .padding()
            
        }
    }
    
    
    // Toggle Selection for Days
    private func toggleDaySelection(day: String) {
        if selectedDays.contains(day) {
            selectedDays.removeAll { $0 == day } // Remove the day if already selected
        } else {
            selectedDays.append(day) // Add the day if not already selected
        }
    }
        
        // Save Settings Action
        private func saveSettings() {
            print("Saved Settings:")
            print("From: \(startTime) - To: \(endTime)")
            print("Selected Days: \(selectedDays)")
        }
    }

    // MARK: - Day Button Component
    struct DayButton: View {
        let day: String
        let isSelected: Bool
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Text(day)
                    .font(.subheadline)
                    .frame(width: 45, height: 45)
                    .background(isSelected ? Color.blue.opacity(0.4) : Color.gray.opacity(0.2))
                    .foregroundColor(isSelected ? .white : .black)
                    .cornerRadius(8)
                    .animation(.easeInOut(duration: 0.3), value: isSelected)
            }
        }
    }
    // MARK: - Edit Interests View
//    struct edit: View {
//        var body: some View {
//            VStack {
//                Text("صفحة تعديل الإهتمامات")
//                    .font(.title2)
//                    .padding()
//                Spacer()
//            }
//            .navigationTitle("تعديل الإهتمامات")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
