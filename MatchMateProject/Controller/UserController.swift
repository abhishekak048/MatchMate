//
//  UserController.swift
//  MatchMate
//
//  Created by Abhishek Kumar on 06/03/25.
//

import Foundation


@MainActor
class UserController: ObservableObject {
    
    let webservice :WebService
    @Published private(set) var userinfo: [Result] = []
//    @Published var users: [UserInfo] = []

    
    init(webservice:WebService){
        self.webservice = webservice
    }
//    @Published var users: UserInfo = UserInfo();

    
    func userInfoGet() async throws {
        userinfo = try await webservice.getUserInfo()
    }
    

    
}
