| Challenge | Title | GTU Reward | Seats | Start Date | Last Date for Submission  |
| -         | -     |          -:| -     |-           | -                         |
| OT4-B3    | Register and deregister as baker. | 2000 GTU | 250 | 20-01-2021 23:00 PT | 03-03-2021 23:00 PT |

##

:warning: If you choose to do this challenge, you cannot also do B2 or B4.

## Mission

**1) Setup a node**

- Run a node for a month (30 full calendar days).

- The 30 days count starts from 21-01-2021 at 08:00 CET, even if you started to run your node before that. Hence, if you have uninterrupted uptime, the challenge can earliest be completed on 20-02-2021 at 08:00 CET.

- If your node is down for some periods, you must add the lost time afterwards. The summary log accumulates the uptimes of the node. It must show a runtime of at least 720 hours when submitting.

- This challenge can be run concurrently with challenge OT4-B1 or as stand-alone challenge. It cannot be run concurrently with challenges OT4-B2 or OT4-B4.

- When the node is running, move on to the next phase.

**2) Baking (3 weeks)**

- Create an identity and account in the mobile app. Request the GTU drop (You will receive 2000 GTUs, even though the drop says 100 GTU.

- Register as baker in the concordium-client. Stake most or all of the total amount of your baker account.

- Decide on if you want to restake earnings, check your current status and make changes to the restake flag accordingly.

- Verify that your baker is included in the baker comitee.

- Verify that your stake limit cannot be transferred.

- Check your account regularly for baker rewards.
  - Note that with a 2000 GTU stake you might receive one baker reward per week but it is not guaranteed. Don't panic, receiving a baker reward is not mandatory for a successful submission.
  - If you have received a baker reward, verify that it is added to the staked amount or to the amount at disposal, depending on the restake earnings status of your baker account.

- After 3 weeks, move on to the next phase.

**3) Grace Period (1 week)**

- Remove your baker.

- Verify that your baker remains included in the baker comitee for a grace period of 1 week.

- Verify that your stake limit cannot be transferred.

- Check your account regularly for baker rewards.
  - Note that with a 2000 GTU stake you might receive one baker reward per week but it is not guaranteed. Don't panic, receiving a baker reward is not mandatory for a successful submission.
  - If you have received a baker reward, verify that it is added to the staked amount or to the amount at disposal, depending on the restake earnings status of your baker account.

- After a week, move on to the next phase.

**4) Not Baking**

- Verify that your node stops baking after the grace period.

- Verify that your account does not receive rewards anymore.

- Verify that your baker is not included in the baker comitee anymore.

- Verify that your stake limit can be transferred now. Please note that there is a [known issue](https://github.com/Concordium/testnet-challenges-draft/issues/1) for the Android mobile app.

## Submission

- In submission.txt
  - Add your node ID
  - Add your baker ID
  - Add your baker account address
  - Add the blockhash of the block with the add baker transaction in it
  - Add the blockhash of the block with the remove baker transaction in it

- Upload your summary log (see [Logs](/logs.md) for instructions & tooling)
  - Runtime must show >= 720 hours.
  - Do not temper with or change anything in the log. Otherwise, we cannot guarantee acceptance.

Please follow the [submission instructions](/submission-process.md) thoroughly - your submission will not be accepted otherwise.
