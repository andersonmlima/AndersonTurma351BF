//
//  HistoryViewModel.swift
//  History
//
//  Created by Anderson Moura on 09/11/23.
//

import Foundation

class HistoryViewModel {
    
    private var service = HistoryService()
    
    func fetchHistory() {
        service.getHistoryMock { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
