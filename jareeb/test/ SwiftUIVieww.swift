//
//  SwiftUIView.swift
//  try
//
//  Created by Raghad on 07/06/1446 AH.
//

import SwiftUI

struct SwiftUIVieww: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
                
                Text("مرحبا..")
                    .font(.title)
                    .multilineTextAlignment(.trailing)
                    .padding() // Add some padding for better spacing
                    .cornerRadius(8)
                //image
                VStack{
                    Spacer()
                    Image("welcome")
                        .resizable()
                        .scaledToFit()
                        .frame(width:300,height:300)
                    Text("مو عارف تستغل وقت فراغك؟")
                        .font(.system (size:30))
                        .multilineTextAlignment(.trailing)
                        .padding([.top, .leading, .trailing], 30.0)
                    
                    Text("هنا نساعدك تكتشف وتجرب الأفضل ")
                        .font(.system (size:18))
                        .multilineTextAlignment(.trailing)
                        .padding([.top, .leading, .trailing], 3.0)
                    
                    Spacer()
                    Button(action: {
                    }) {
                        NavigationLink(destination: welcome2()){
                            Text("ابدأ ")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }}
                                        .navigationBarBackButtonHidden(true)
                    .padding(.horizontal, 40)
                    
                }
                .padding(.vertical, 50)
                
            }
            
        }
        
    }}

#Preview {
    SwiftUIVieww()
}
