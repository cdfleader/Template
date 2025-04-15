import SwiftUI
import DesignSystemKit

struct DetailsView: View {
    @StateObject private var viewModel = DetailsViewModel()
    
    var body: some View {
        BaseView(title: viewModel.title) {
            // Contenu spécifique à la page de recherche
        }
    }
}
/*
#Preview {
    SearchView()
} 
*/
