import XCTest
@testable import AL01

class MarathonTest: XCTestCase {
    static let participants = [
        ["leo", "kiki", "eden"],
        ["marina", "josipa", "nikola", "vinko", "filipa"],
        ["mislav", "stanko", "mislav", "ana"]
    ]
    static let completions = [
        ["eden", "kiki"],
        ["josipa", "filipa", "marina", "nikola"],
        ["stanko", "ana", "mislav"]
    ]
    static let answers = ["leo", "vinko", "mislav"]

    var participant: [String]!
    var completion: [String]!
    
    override func setUp() {
        let index = Int.random(in: 0...(MarathonTest.participants.count - 1))
        participant = MarathonTest.participants[index]
        completion = MarathonTest.completions[index]
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSolution() {
        for index in 0..<MarathonTest.participants.count {
            let marathon = Marathon(participant: MarathonTest.participants[index], completion: MarathonTest.completions[index])
            let expected = MarathonTest.answers[index]
            let acutal = marathon.findUnfinishedRunner()
            
            XCTAssertEqual(expected, acutal)
        }
    }
}

