import SwiftUI
import DesignSystemKit

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()
    let typography = DSTypography()
    
    var body: some View {
        BaseView(title: viewModel.title) {
            HStack{
                DSButton(
                    title: "Edit profile",
                    style: .secondary,
                    size: .medium,
                    shape: .rectangle
                ) {
                    print("Edited")
                }.frame(width: 180)
            }
        }
    }
}

#Preview {
    ProfileView()
}
