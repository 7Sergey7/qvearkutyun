//
//  main.swift
//  qvearkutyun
//
//  Created by Seroj on 03.06.22.
//

import Foundation

let iosStundents = ["Liana", "Siranush", "Norayr", "Raf", "Aren", "Onik", "Seroj"]

func election(yes: [Int], no: [Int]) -> String {
    
    var electionResults = ""
    
    if yes.count > no.count && yes.count + no.count >= iosStundents.count / 2 {
        electionResults.append("<Yes> won the election")
    } else if no.count > yes.count && yes.count + no.count >= iosStundents.count / 2 {
        electionResults.append("<No> won the election")
    } else if yes.count + no.count < iosStundents.count / 2 {
        electionResults.append("there were no elections")
    } else {
        electionResults.append("election results are equal")
    }
    
    return electionResults
}

let results = election(yes: [], no: [])
print(results)
