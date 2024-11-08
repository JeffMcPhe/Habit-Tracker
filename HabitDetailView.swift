import SwiftUI

struct HabitDetailView: View {
    let habitName: String
    @State private var progress: Int = 0
    
    var body: some View {
        VStack {
            Text(habitName)
                .font(.largeTitle)
                .padding()
            
            ProgressView(value: Double(progress), total: 10.0)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            List {
                TaskRow(taskName: "Simple Routine Task")
                TaskRow(taskName: "Simple Novel Task")
                TaskRow(taskName: "Complex Routine Task")
                TaskRow(taskName: "Complex Novel Task")
            }
            
            Button(action: {
                if progress < 10 {
                    progress += 1
                }
            }) {
                Text("Mark Task as Complete")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(habitName)
    }
}
