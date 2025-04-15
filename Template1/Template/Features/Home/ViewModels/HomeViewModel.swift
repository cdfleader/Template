import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var title: String = "Accueil"
    
    init() {
        // Initialisation du ViewModel
    }
} 