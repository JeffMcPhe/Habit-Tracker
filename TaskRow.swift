import SwiftUI

struct TaskRow: View {
    let taskName: String
    @State private var isCompleted: Bool = false

    var body: some View {
        HStack {
            Text(taskName)
                .font(.headline)
            Spacer()
            Button(action: {
                isCompleted.toggle()
            }) {
                Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(isCompleted ? .green : .gray)
            }
        }
        .padding()
    }
}
