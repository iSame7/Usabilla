//
//  FeedbackListInteractor.swift
//  Usabilla
//
//  Created by Sameh Mabrouk on 26/05/2018.
//  Copyright © 2018 Sameh Mabrouk. All rights reserved.
//

import UIKit

enum FetchModulesResult<T> {
    case success(viewModel: T)
    case failure(reason: Error)
}


class FeedbackListInteractor: FeedbackListInteractorInput {
    private let service: FeedbackListServiceFetching
    
    init(service: FeedbackListServiceFetching) {
        self.service = service
    }
    
    func getFeedbackList(output: FeedbackListInteractorOutput) {
        service.fetchFeedbackList { (feedbackViewModel, error) in
            let result: FetchModulesResult<FeedbackViewModel>
            
            if let feedbackViewModel = feedbackViewModel {
                result = FetchModulesResult.success(viewModel: feedbackViewModel)
            } else if let error = error {
                result = FetchModulesResult.failure(reason: error)
            } else {
                let error = NSError(domain: NSURLErrorDomain, code: 500, userInfo: nil)
                result = FetchModulesResult.failure(reason: error)
            }
            
            output.foundFeedbackList(result: result)
        }
    }
    
    
}
