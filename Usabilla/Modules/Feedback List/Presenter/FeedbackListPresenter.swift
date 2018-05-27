//
//  FeedbackListPresenter.swift
//  Usabilla
//
//  Created by Sameh Mabrouk on 26/05/2018.
//  Copyright © 2018 Sameh Mabrouk. All rights reserved.
//

import UIKit

class FeedbackListPresenter: FeedbackListPresentation {
    private weak var view: FeedbackListViewable?
    private let interactor: FeedbackListInteractorInput
    
    init(view: FeedbackListViewable, interactor: FeedbackListInteractorInput) {
        self.view = view
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        
    }
}
