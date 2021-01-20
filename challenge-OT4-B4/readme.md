| Challenge | Title | GTU Reward | Seats | Start Date | Last Date for Submission  |
| -         | -     |          -:| -     |-           | -                         |
| OT4-B4    | Make baker updates.              | 3000 GTU | 250 | 20-01-2021 23:00 PT | 03-03-2021 23:00 PT |

##


## Mission

**1) Setup a node**

- Run a node for a month (30 full calender days).

- The 30 days count starts from 21-01-2021 at 08:00 CET, even if you started to run your node before that. Hence, if you have uninterrupted uptime, the challenge can earliest be completed on 20-02-2021 at 08:00 CET.

- If your node is down for some periods, you must add the lost time afterwards. The summary log accumulates the uptimes of the node. It must show a runtime of at least 720 hours when submitting.

- This challenge can be run concurrently with challenge OT4-B1 or as stand-alone challenge. It cannot be run concurrently with challenges OT4-B2 or OT4-B3.

- When the node is running, move on to the next phase.

**2) Baking (1 week)**

- Create an identity and account in the mobile app. Request the GTU drop (You will receive 2000 GTUs, even though the drop says 100 GTU.

- Register as baker in the concordium-client. Stake 1000 GTU.

- Decide on if you want to restake earnings, check your current status and make changes to the restake flag accordingly.

- Verify that your baker is included in the baker comitee.

- Verify that your stake limit cannot be transferred.

- After 1 week, move on to the next phase.

**3) Updating (3 weeks)**

Make the following updates.

u1) Update baker keys on the chain but use the current baker keys.
  - Save the blockhash of the update transaction.
  - Check the block explorer in the network dashboard via https://dashboard.testnet.concordium.com/chain/<blockhash> and verify that the transactions are shown correctly.

u2) Update baker keys on the chain and use fresh baker keys.
  - Save the blockhash of the update transaction.
  - Check the block explorer in the network dashboard via https://dashboard.testnet.concordium.com/chain/<blockhash> and verify that the transactions are shown correctly.

u3) Remove baker and then add baker again with the same keys for the same account. You will have to wait for a week until your changes take effect.
  - Save the blockhash of the add baker transaction.
  - Save the blockhash of the remove baker transaction.
  - Check the block explorer in the network dashboard via https://dashboard.testnet.concordium.com/chain/<blockhash> and verify that the transactions are shown correctly.

u4) Remove baker and then add baker again with fresh keys for the same account. You will have to wait for a week until your changes take effect.
  - Save the blockhash of the add baker transaction.
  - Save the blockhash of the remove baker transaction.
  - Check the block explorer in the network dashboard via https://dashboard.testnet.concordium.com/chain/<blockhash> and verify that the transactions are shown correctly.

u5) Remove baker and then add baker again with fresh keys for a new account. You will have to wait for a week until your changes take effect.
  - Save the blockhash of the add baker transaction.
  - Save the blockhash of the remove baker transaction.
  - Check the block explorer in the network dashboard via https://dashboard.testnet.concordium.com/chain/<blockhash> and verify that the transactions are shown correctly.

u6) Increase your stake to 2000 GTU. Verify that the new stake takes effect after 1 epoch.
  - Save the blockhash of the stake transaction.
  - Check the block explorer in the network dashboard via https://dashboard.testnet.concordium.com/chain/<blockhash> and verify that the transactions are shown correctly.

## Submission

- In submission.txt
  - Add your node ID
  - Add your first baker ID
  - Add your second baker ID
  - Add your first baker account address
  - Add your second baker account address
  - Add the blockhash of the block with the first add baker transaction in it
  - Add the blockhash of the block with the update 1 transaction in it
  - Add the blockhash of the block with the update 2 transaction in it
  - Add the blockhash of the block with the add baker transaction of update 3 in it
  - Add the blockhash of the block with the remove baker transaction of update 3 in it
  - Add the blockhash of the block with the add baker transaction of update 4 in it
  - Add the blockhash of the block with the remove baker transaction of update 4 in it
  - Add the blockhash of the block with the add baker transaction of update 5 in it
  - Add the blockhash of the block with the remove baker transaction of update 5 in it
  - Add the blockhash of the block with the update 6 transaction in it

- Upload your summary log (see [Logs](/logs.md) for instructions & tooling)
  - Runtime must show >= 720 hours.
  - Do not temper with or change anything in the log. Otherwise, we cannot guarantee acceptance.

Please follow the [submission instructions](/submission-process.md) thoroughly - your submission will not be accepted otherwise.
