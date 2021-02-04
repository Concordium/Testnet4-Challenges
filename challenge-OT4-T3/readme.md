| Challenge | Title | GTU Reward | Seats | Start Date | Last Date for Submission  |
| -         | -     |          -:| -     |-           | -                         |
| OT4-T3    | Mixed bulk transactions. | 3000 GTU | 200 | 27-01-2021 23:00 PT | 17-02-2021 23:00 PT |
##

## Preparation
- Read the documentation to get a good understanding of the different transaction types:
  - [Concordium documentation](https://developers.concordium.com/en/testnet4/testnet/references/transactions.html)
  - `transaction --help`
  - `account --help`

## Setup
- Create new or reuse identities (mobile wallet).
- Create new or reuse accounts (mobile wallet or concordium-client).
- Make sure that your sender account can cover all upcoming transaction fees paid from the general balance. A transfer will fail if the transfer fee cannot be paid. Failed transfers do not add to the requested transactions of the challenge. See [list of current transfer fees](https://github.com/Concordium/Testnet4-Challenges/issues/75).
- A transfer must go from a sender account to a different account that receives. In other words, do not send a transfer to the sender account.

## Mission
- Use the concordium-client.
- Send 4 different transfers every 10 minutes, i.e. 1 simple transfer plus 1 shielded transfer plus 1 shielding amount plus 1 unshielding amount every 10 minutes.
- Repeat that 7 hours per day.
- Repeat that 7 days.

## Important Note
- We use the terms shielded transfers and encrypted transfers interchangeably.
- Only successful transfers of the correct transfer type add to the hourly, daily and total amount of required transactions. Failed transfers do not count.
- The submission will only be accepted, if the hourly, daily and total amount of required successful transactions of the correct type is achieved.

## Submission
- In submission.txt
  - Add the account address of your sender account

Please follow the [submission instructions](/submission-process.md) thoroughly - your submission will not be accepted otherwise.
