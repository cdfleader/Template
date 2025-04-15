import SwiftUI
import DesignSystemKit

protocol BaseViewProtocol {
    var title: String { get }
}

struct BaseView<Content: View>: View {
    let title: String
    let content: Content
    private let colors = DSColors()
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .foregroundColor(colors.textPrimary)
                .padding()
            content
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colors.backgroundPrimary)
    }
} 