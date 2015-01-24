//
//  SyncServer.swift
//  AppContatos
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 Anderson Anzileiro. All rights reserved.
//

protocol SyncServerDelegate : class {
    
    func infoSaved()
    
}

class SyncServer {
    
    weak var delegate: SyncServerDelegate?
    
    init(){
    
    }
    
    func sendInfo(){
        //simular mandar info pro server.
        //---
        println("mandar info pro server")
        
        //se gravou tudo ok
        delegate?.infoSaved()
    }
}

