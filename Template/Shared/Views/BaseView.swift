import SwiftUI
import DesignSystemKit

struct BaseView<Content: View>: View {
    let title: String
    let content: Content
    @Environment(\.dsTheme) private var theme
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(theme.typography.title)
                .foregroundColor(theme.colors.text)
                .padding()
            content
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(theme.colors.background)
    }
} 