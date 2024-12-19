
import SwiftUI

struct welcome3: View {
    
    var body: some View {
        
            ZStack {
                Color(UIColor(red: 138/255, green: 195/255, blue: 242/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    Text("مستعد تجرب!")
                        .font(.system(size: 34))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        print("تم الضغط على الزر")
                    }) {
                        NavigationLink(destination:FreeTimeView()){
                            Text("ابدأ الآن")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }}
                    .padding(.horizontal, 40)
                    .navigationBarBackButtonHidden(true)

                }
                .padding(.vertical, 80)
            }
        }
    }


       struct welcome3_Previews: PreviewProvider {
           static var previews: some View {
               welcome3()
           }
       }
