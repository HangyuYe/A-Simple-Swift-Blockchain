//Copyright (c) SoftChain Foundation Ltd. 2018, All Rights Reserved
//The Project and code is not remain for QuarkChain Network.

import Foundation

func genrateBlock() {
    var blockNumber: Int = 0
    var hashValue: Double = 0.0
    
    for _ in 1...500 {
        blockNumber += 1
        hashValue += 0.1
        print(blockNumber, hashValue)
    }
    
}

genrateBlock()
