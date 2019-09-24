import Cocoa

// MARK: - Config
let leapyear       = false

let normalMonthPos = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365]
let leapMonthPos   = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366]
let monthpos       = (leapyear == false) ? normalMonthPos : leapMonthPos

// MARK: - Main Function
func jingjing_rand(_ sstr: String, _ estr: String) -> String {
    var answer = ""
    let sarr   = sstr.components(separatedBy: "/").map { Int($0)! }
    let earr   = estr.components(separatedBy: "/").map { Int($0)! }
    
    if sarr.count > 1 && earr.count > 1 {
        let startpos = monthpos[sarr.first!-1] + sarr.last!
        let endpos   = monthpos[earr.first!-1] + earr.last!
        
        let rand = Int.random(in: startpos...endpos)
        
        let p = monthpos.firstIndex { $0 >= rand }!
        let e = rand - monthpos[p-1]
        answer = "\(p)/\(e)"
    }
    
    return answer
}

// MARK: - Run
print(jingjing_rand("10/15", "12/31"))
