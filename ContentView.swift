import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HabitDetailView(habitName: "Physical - Cardio")) {
                    Text("Physical - Cardio")
                }
                NavigationLink(destination: HabitDetailView(habitName: "Physical - Strength")) {
                    Text("Physical - Strength")
                }
                NavigationLink(destination: HabitDetailView(habitName: "Mental - Focus")) {
                    Text("Mental - Focus")
                }
            }
            .navigationTitle("Habit Categories")
        }
    }
}
