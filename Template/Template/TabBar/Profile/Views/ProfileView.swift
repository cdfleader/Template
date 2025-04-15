import SwiftUI
import DesignSystemKit

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()
    
    var body: some View {
        BaseView(title: viewModel.title) {
            // Contenu spécifique à la page de profil
        }
    }
}

#Preview {
    ProfileView()
} 