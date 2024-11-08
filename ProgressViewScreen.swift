import SwiftUI

struct ProgressViewScreen: View {
    @State private var weeklyTasksCompleted = 0
    
    var body: some View {
        VStack {
            Text("Weekly Progress")
                .font(.largeTitle)
                .padding()
            
            ProgressView(value: Double(weeklyTasksCompleted), total: 10.0)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            Button(action: {
                if weeklyTasksCompleted < 10 {
                    weeklyTasksCompleted += 1
                }
            }) {
                Text("Complete Task")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
            if weeklyTasksCompleted >= 10 {
                Text("You've unlocked harder tasks!")
                    .foregroundColor(.green)
                    .padding()
            }
            
            Spacer()
        }
    }
}
