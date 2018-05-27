//
//  FeedbackListServiceFetching.swift
//  Usabilla
//
//  Created by Sameh Mabrouk on 26/05/2018.
//  Copyright © 2018 Sameh Mabrouk. All rights reserved.
//

import UIKit

typealias FeedbackListCompletion = (_ viewModel: FeedbackViewModel?, _ error: Error?) -> Void

protocol FeedbackListServiceFetching {
    func fetchFeedbackList(compeletion: @escaping FeedbackListCompletion)
}
