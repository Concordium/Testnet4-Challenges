# Smart Contract Categories

The smart contract categories are guidelines and do not specify the exact or complete behaviour. The intention is that the developer will use their own ideas to refine and concretize the specification. 
The following points should be considered in any implementation:

A. GTU owned by the smart contract will never get locked indefinitely.

B. It should not be possible to exploit the contract to steal GTU in unintended ways, i.e., the contract can sustain malicious users.

## Category List

1. Trusted source of off-chain data
    - A smart contract that acts as a trusted source of off-chain data, e.g., weather in Reykjavik. It can be updated by the creator only.
    - Other contracts can send it messages to obtain the current value of the data. The contract requires payment to provide the data.
    - Write a companion contract that uses the trusted source contract to govern its logic.
    
1. Timestamping contract
    - A smart contract that can be used to timestamp data.
    - Users can submit small amounts (the contract enforces the limit) of data which the contract stores together with the time it has received it.
    - Other contracts can send messages to query the contract about the presence and the timestamp of some data.

1. Transfer Rate Limit
    - Smart contract holds GTU. It can receive and send them.
    - However there are limits on the rate at which GTU can be transferred (e.g., no more than 77 GTU per day can leave the contract balance). The parameters are configured when the contract is created.
    - Test in the client to transfer an amount below, on, and above the limit.

1. Blocked Attribute
    - Smart contract holds GTU. It can receive and send them.
    - Smart contracts must prevent an account from receiving funds from, e.g., a certain country.
    - If the nationality isn't revealed for an account, the transfer must be declined.
    - Test all possibilities accepted, blocked and no country.

1. Escrow
    - Smart contract to act as escrow agent that receives and disburses money for the primary transacting party, with the disbursement dependent on conditions agreed to by the transacting party.
    - There must be the possibility to cancel the transfer before the money is released.

1. ERC20
    - Smart contract for the [ERC-20 token standard interface](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md).
    - The interface will have to be adapted to the smart contract interface available on the concordium blockchain. The goal is to mimic the spirit of the token standard, and not adhere strictly to the ERC-20 specification.

1. Extended Auction
    - Refine our auction smart contract with the following extensions:
        - Make it possible to only bid from a specific country.
        - Impose rules on bids, e.g., minimum bids, minimum bid increases
    - Add other modifications, e.g., fees for bidding, that would make the contract more interesting.

1. Crowdfunding 
    - Design and implement a crowdfunding contract. It should support at least the following
        - Creation of the crowdfunding campaign with a deadline and goal.
        - Supporters can contribute to the campaign until the deadline.
        - After the crowdfunding deadline has passed the creator can collect funds, if the goal was reached. Otherwise supporters can reclaim their funds.
    - Think about what further rules could be added on top of the basic schema. For example changing the desired goal, the deadline, restricting who can contribute, etc.

1. A multiplayer game
    - Implement a contract that supports two or more players playing a game. You choose the game.
    - The contract implements and enforces the rules of the game, and the accounts take turns playing, according to the rules. A simple example is tic-tac-toe, a slightly more complicated one is connect four.
        - A specific player often has an advantage in a lot of perfect information games. Make it so that players can “toss a coin” to determine who goes first, after registering.
        - The games should require participants to commit some GTU to incentivize players to continue playing/finish the game.

1. Free design
    - Specify your own smart contract.
    - We will assess specification, scope and meaningfulness and accept or reject your proposal. 
    - See the list for categories that are [out of scope](#out-of-scope). Such contracts or proposals that are too close in scope will not be accepted.
    - To keep your spot in the registration queue, you can choose one of the proposed topics as a second option when applying.


## Out of Scope

The following smart contracts are already implemented as [examples](https://github.com/Concordium/concordium-rust-smart-contracts/tree/main/examples) and will not be accepted as submissions.

1. Simple Auction
    - To bid, participants send GTU using the bid function.
    - The participant with the highest bid wins the auction.
    - When the auction is finalized, every participant except the winner gets their money back.
    
1. Piggy bank
   - Smart contract allows anyone to insert GTU, but only the owner can "smash" it and retrieve the GTU. 
   - After being smashed, GTU cannot be inserted anymore.
   
1. Two-step transfer
   - A contract that acts like an account (can send, store and accept GTU), but requires n > 1 ordained accounts to agree to the sending of GTU before it is accepted. This is useful for storing GTU where the security of just one account isn’t considered high enough.
