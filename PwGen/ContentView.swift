import SwiftUI
import AppKit

struct ContentView: View {
    @State private var passwordLength: Double = 16
    @State private var includeCaps = true
    @State private var includeSpecial = true
    @State private var includeNumbers = true
    @State private var password = ""
    @State private var showCopiedAnimation = false

    var body: some View {
        VStack(spacing: 25) {
            Text("Password Generator")
                .font(.title)
                .bold()

            VStack {
                Text("Length: \(Int(passwordLength))")
                Slider(value: $passwordLength, in: 8...72, step: 1)
                    .frame(width: 300)
            }

            VStack(alignment: .leading) {
                Toggle("Include Capital Letters", isOn: $includeCaps)
                Toggle("Include Special Characters", isOn: $includeSpecial)
                Toggle("Include Numbers", isOn: $includeNumbers)
            }
            .frame(width: 300)

            Button(action: {
                withAnimation(.easeInOut(duration: 0.2)) {
                    password = generatePassword(length: Int(passwordLength),
                                                useCaps: includeCaps,
                                                useSpecial: includeSpecial,
                                                useNumbers: includeNumbers)
                    copyToClipboard(password)
                    showCopiedAnimation = true
                }

                // Hide animation after delay
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        showCopiedAnimation = false
                    }
                }
            }) {
                Text("Generate")
                    .font(.headline)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            VStack {
                Text(password)
                    .font(.system(.body, design: .monospaced))
                    .padding()
                    .frame(width: 300, height: 80)
                    .border(Color.gray)
                    .opacity(password.isEmpty ? 0 : 1)
                    .animation(.easeInOut, value: password)

                if !password.isEmpty {
                    Image(systemName: showCopiedAnimation ? "checkmark.circle.fill" : "doc.on.clipboard")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(showCopiedAnimation ? .green : .gray)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 0.3), value: showCopiedAnimation)
                }
            }

            Spacer()
        }
        .padding()
        .frame(width: 400, height: 520)
    }

    func generatePassword(length: Int, useCaps: Bool, useSpecial: Bool, useNumbers: Bool) -> String {
        var characters = "abcdefghijklmnopqrstuvwxyz"
        if useCaps {
            characters += "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        }
        if useNumbers {
            characters += "0123456789"
        }
        if useSpecial {
            characters += "!@#$%^&*()-_=+[]{}|;:',.<>?/`~"
        }

        guard !characters.isEmpty else { return "Select at least one character set" }

        return String((0..<length).compactMap { _ in characters.randomElement() })
    }

    func copyToClipboard(_ text: String) {
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(text, forType: .string)
    }
}

#Preview {
    ContentView()
}
