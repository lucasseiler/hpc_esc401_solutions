## Exercise 2

Command to run the map&reduce procedure locally:
```
( for F in trump_tweets_0?.csv ; do cat $F | ./mapper.py ; done ) | sort | ./reducer.py > output_local.txt
```

Number of map operations: 7

Number of reduce operations: 1

Input lines: 35371

Seen words by mapper: 538568

Number of unique words (reduced by reducer): 47090

Locally, the output file `output_local.txt` was created.
Using `hadoop`, the output `file part-00000` was created.

I could not find the output files with the api.
