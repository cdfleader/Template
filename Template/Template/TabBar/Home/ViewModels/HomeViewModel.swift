import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var title: String = "Home"
    
    init() {
        // Initialisation du ViewModel
    }
} 
