struct Marathon {
    var participant: [String]
    var completion: [String]
    
    func findUnfinishedRunner() -> String {
        var sortedParticipant = participant.sorted()
        var sortedCompletion = completion.sorted()
        
        while sortedParticipant.first == sortedCompletion.first {
                sortedParticipant.removeFirst()
                sortedCompletion.removeFirst()
        }

        return sortedParticipant.first!
    }
}
