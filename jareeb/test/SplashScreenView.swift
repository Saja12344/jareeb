//
//  SplashScreenView.swift
//  try
//
//  Created by Raghad on 09/06/1446 AH.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            SwiftUIVieww()
        } else {
            VStack{
                Image("جرب")
                    .resizable()
                    .frame(width: 300 ,height: 300)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)){
                    self.size = 0.9
                    self.opacity = 1.0
                }
            
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation {
                        self.isActive = true

                    }
                }
            }
        }
        
    }
        }
        

struct SplashScreenView_Previews: PreviewProvider{
    static var previews: some View{
        SplashScreenView()
    }
}

