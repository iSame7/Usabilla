//
//  FeedbackListInteractorIO.swift
//  Usabilla
//
//  Created by Sameh Mabrouk on 26/05/2018.
//  Copyright © 2018 Sameh Mabrouk. All rights reserved.
//

import UIKit

protocol FeedbackListInteractorInput {
    func getFeedbackList(output: FeedbackListInteractorOutput)
}

protocol FeedbackListInteractorOutput {
    func foundFeedbackList(result: FetchModulesResult<FeedbackViewModel>)
}
