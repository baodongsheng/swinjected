//
//  HomeInteractorImpl.swift
//  swinjected
//
//  Created by Pedro Paulo de Amorim on 19/10/2016.
//  Copyright © 2016 Pedro Paulo de Amorim. All rights reserved.
//

import Foundation

class HomeInteractorImpl: HomeInteractor {
  
  var callback: HomeCallback?
  
  func requestData() {
    requestItems(success: { data in self.callback?.onSuccess() },
                 error: { self.callback?.onError() })
  }
  
}
