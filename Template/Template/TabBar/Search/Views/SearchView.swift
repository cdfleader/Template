import SwiftUI
import DesignSystemKit

struct SearchView: View {
    @StateObject private var viewModel = SearchViewModel()
    
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
