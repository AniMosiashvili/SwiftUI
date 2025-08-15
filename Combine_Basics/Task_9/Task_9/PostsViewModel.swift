//
//  PostsViewModel.swift
//  Task_9
//
//  Created by Anna Harris on 04.08.25.
//

import Foundation
import Combine

class PostsViewModel {
    @Published var posts: [Post] = []
    private var cancellables = Set<AnyCancellable>()
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Post].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .sink { [weak self] in self?.posts = $0 }
            .store(in: &cancellables)
    }
}
