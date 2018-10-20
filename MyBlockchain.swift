//
//  MyBlockchain.swift
//  
//
//  Created by Jerry on 10/21/18.
//

import Foundation

struct Block {
    public private(set) var previousBlockHashValuse: Int
    public private(set) var transactions: [String]
    
    var blcokHashValue: Int {
        get {
            var hashValues: Float = Float(previousBlockHashValuse)
            
            for transaction in transactions {
                hashValues += Float(transaction.hashValue)
            }
            return String(hashValues).hashValue
        }
    }
    
    init(_ transactions:[String], _ previousBlockHashValue: Int) {
        self.transactions = transactions
        self.previousBlockHashValuse = previousBlockHashValue
    }
}

struct Blockchain {
    public private(set) var arrayOfBlock:[Block] = [Block]()
    public private(set) var lastBlockHashValue:Int = 0
    
    mutating func add(_ newBlock: Block){
        if lastBlockHashValue == 0 || lastBlockHashValue == newBlock.previousBlockHashValuse {
            arrayOfBlock.append(newBlock)
            lastBlockHashValue = newBlock.blcokHashValue
            print("Added blcok hash: \(lastBlockHashValue)")
        } else {
            print("Failed to add blcok hash: \(newBlock.blcokHashValue)")
        }
    }
}

var blcokchain = Blockchain()

let genesisBlock = Block(["1233", "1234","1235"], 0)

print("genesisBlock hash: \(genesisBlock.blcokHashValue), blockchain count \(blcokchain.arrayOfBlock.count)")

