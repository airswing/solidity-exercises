pragma solidity 0.4.23;


contract TimedVoting {
    address[] candidates;
    address[] voters;
    uint startBlock;
    uint endTimestamp;

    struct Candidate {
        uint votes;
        bool isCandidate;
    }

    mapping(address => bool) public voted;        // keep track of who already voted
    mapping(address => Candidate) public results; // keep track of the number of votes for a candidate

    modifier onlyWhenOpen() {
        // implement modifier that requires voting to be open at the time of execution
        _;
    }

    modifier onlyOneVote() {
        // implement modifier that disallows voting same voter more than once
        _;
    }

    constructor(
        address[] _candidates,
        address[] _voters,
        uint _startBlock,
        uint _endTimestamp
    ) public {
        candidates = _candidates;
        voters = _voters;
        startBlock = _startBlock;
        endTimestamp = _endTimestamp;

        // set isCandidate to true for each candidate
    }

    function vote(address _candidate) public onlyWhenOpen onlyOneVote returns (bool) {
        // 1. make sure candidate address points to genuine candidate
        // 2. increment number of votes
        // 3. store information that voter already voted
    }
}
