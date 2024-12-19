import SwiftUI

// Color Extension for HEX color support
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let red = Double((rgbValue >> 16) & 0xFF) / 255.0
        let green = Double((rgbValue >> 8) & 0xFF) / 255.0
        let blue = Double(rgbValue & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}

struct EditInterestsView: View {
    // List of interest options
    let interests = [
        "كرة القدم", "كرة التنس", "يوغا", "كرة السلة", "فنون قتالية",
        "رسم", "ركوب الخيل", "الخط العربي", "مطاعم", "مقاهي",
        "كتب", "سباحة", "بودكاست", "تصوير", "ألعاب"
    ]
    
    // Grid layout configuration
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    @Environment(\.presentationMode) var presentationMode // To control navigation
    @State private var selectedInterests: Set<String> = [] // Local state to store selected interests
    
    var body: some View {
        ZStack {
            // Background color
            Color(hex: "FFFFFF")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Title
                Text("مجالات اهتماماتك:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                // Scrollable grid of interest items
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(interests, id: \.self) { interest in
                            Circle()
                                .fill(selectedInterests.contains(interest) ? Color(hex: "8AC3F2") : Color(.systemGray6))
                                .frame(width: 120, height: 120)
                                .overlay(
                                    Text(interest)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                        .padding(6)
                                )
                                .onTapGesture {
                                    // Toggle selection
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
                
                Spacer()
                
                // Save Button
                Button(action: {
                    print("Selected Interests: \(selectedInterests)")
                    presentationMode.wrappedValue.dismiss() // Close the view
                }) {
                    Text("حفظ")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(hex: "FFCC00"))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
        }
    }
}

struct EditInterestsView_Previews: PreviewProvider {
    static var previews: some View {
        EditInterestsView()
    }
}

