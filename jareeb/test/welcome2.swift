//
//  welcome2.swift
//  try
//
//  Created by Raghad on 08/06/1446 AH.
//

import SwiftUI

import UserNotifications

struct welcome2: View {
    @Environment(\.presentationMode) var presentationMode
      @State private var notificationScheduled = false
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            
            VStack{
                Spacer()
                Image("welcome2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300,height:300)
                
                Text("مهتم تعرف اخر مقترحاتنا لاماكن واهتمامات جديدة؟")
                    .font(.system (size:30))
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal, 30.0)
                
                Spacer()
                Button(action: {
                    requestNotificationPermission()
                    print("تم الضغط على الزر")
                }) {
                    
                    NavigationLink(destination:welcome3()){
                        
                        Text("تفعيل الاشعارات")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow.opacity(0.9))
                            .cornerRadius(10)
                    }}
                .padding(.horizontal, 40)
                
                .padding(.vertical, 20)
                
                Button(action: {
                    print("تم الضغط على زر تخطي")
                    
                }){
                    NavigationLink(destination:welcome3()){
                        Text("تخطي")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                            .background(Color.clear)
                            .cornerRadius(10)
                    }}
                .padding(.horizontal, 40)
                
            }
            .padding(.vertical, 50)
            
        } .onAppear {
            requestNotificationPermission()
                           if !notificationScheduled {
                               scheduleNotification()
                               notificationScheduled = true
        }
    }
}
    
    func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("تم تفعيل الإشعارات")
            } else {
                print("تم رفض الإذن أو حدث خطأ: \(String(describing: error))")
            }
        }
    }
    
    func createNotificationContent() -> UNNotificationContent {
        let content = UNMutableNotificationContent()
        content.title = "اقتراح جديد!"
        content.body = " لاننا نفهمك ، نقدم لك اقتراح بيعجبك  "
        content.sound = UNNotificationSound.default
        
        return content
    }
    func scheduleNotification() {
        let content = createNotificationContent()
              let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true) // تكرار كل دقيقتين
              let request = UNNotificationRequest(identifier: "MyNotification", content: content, trigger: trigger)
        
      
    UNUserNotificationCenter.current().add(request) { error in
                if let error = error {
                    print("Error scheduling notification: \(error.localizedDescription)")
                } else {
                    print("تم جدولة الإشعار بنجاح!")
                }
            }
        }
    }



#Preview {
    welcome2()
}
