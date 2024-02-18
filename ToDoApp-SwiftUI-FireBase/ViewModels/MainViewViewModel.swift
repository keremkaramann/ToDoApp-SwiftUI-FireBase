//
//  MainViewModel.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import Foundation
import FirebaseAuth
class MainViewViewModel:ObservableObject{
    @Published var currentUserıd: String = ""
    
    init(){
        
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async{
                self?.currentUserıd = user?.uid ?? ""
            }
        }
    }
    
    public var isSighnedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
