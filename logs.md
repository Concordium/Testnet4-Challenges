
## Log submission

For B1+B2/B3/B4 challenges, proof of runtime via logs is required.

There is fairly verbose logging enabled by default for the node software in Testnets, so we've created a small tool `retrieve_minified_logs` to sample your full set of log files and output a summary that is acceptable for submission.

- [Download retrieve_minified_logs for Linux](https://client-distribution-testnet.concordium.com/retrieve_minified_logs-linux-v1)
- [Download retrieve_minified_logs for OS X](https://client-distribution-testnet.concordium.com/retrieve_minified_logs-macos-v1)
- [Download retrieve_minified_logs for Windows](https://client-distribution-testnet.concordium.com/retrieve_minified_logs-windows-v1.exe)


Simply run the relevant binary on your system where the Concordium Node has been running. The tool will output two files in the folder it is run.

**⚠️ These files must be submitted without modifications. Tampering with the summary log will be detected and result in disqualification from all challenges.**


## Log sizes

After running the node for a significant time you may find that you are running out of disk space on your node.

Please try the following things.

### 1. Run the log summary tool

Download the appropriate executable linked above, and run it.

Add the output file, unmodified, to your single submission PR. You can replace this file in future with a larger runtime summary, or add further files if you are forced to clear logs.

Then move onto step 2.

If you cannot run it (it fails/breaks), move onto step 2.


### 2. Try clear up excess lines in your log

If (1) did not succeed, or you just wish to clear some space, try these commands to strip out excess lines in your log:

**⚠️ You must shut down your node before you do this, otherwise you might corrupt your entire logs! ⚠️**

Linux:
```
sed -i "/priority/d" `docker inspect --format='{{.LogPath}}' concordium-client`
```

macOS:
```
sed -i '' "/priority/d" `docker inspect --format='{{.LogPath}}' concordium-client`
```

Windows:

```
docker inspect --format='{{.LogPath}}' <container_name_or_id>
```
to get the filename, and then
```
Get-Content <file> | Select-String -pattern 'priority' -notmatch | Out-File <new-file>
```

You can now try step (1) again if it did not succeed before.

If this succeeds, great! Nothing more to do.

If this fails, move onto (3).

**⚠️ When you restart your node, answer "No" to changing your nodeID (the default) to keep existing logs ⚠️**


### 3. Advanced log extraction options

For this you'll need to speak with our team. Please post your issue in the [#testnet_support channel on Discord](https://discord.com/channels/667378330923696158/687313907500449849).

We may be able to help with some different commands/strategies for extraction depending on your situation.


### 4. Clear your logs entirely

**⚠️ Make sure you generate log summaries for submission _before_ clearing any logs!**

This should only be done as a last resort, if 1/2/3 have failed, and someone from `[Team]` has told you to do so on Discord.

You can find your log file location by running:

```
docker inspect --format='{{.LogPath}}' <container_name_or_id>
```

Where the `<container_name_or_id>` is found by running `docker ps -a`.

You can then clear out your current logs via the command line:

```
# On OSX / Linux
truncate -s 0 <log_path>

# On Windows
echo.> <log_path>
```

Repeat this process if the log size gets too large again.

Make sure to submit all your log summaries if you're doing any of the `B*` challenges.
