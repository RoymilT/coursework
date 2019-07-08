<<<<<<< HEAD
<<<<<<< HEAD
#!/bin/bash

#uncompress file
gunzip googlebooks-eng-all-1gram-20120701-1.gz
#filter
egrep '^(18|19|20)[0-9][0-9][[:space:]]' googlebooks-eng-all-1gram-20120701-1 > year_counts.tsv

# filter original 1gram file googlebooks-eng-all-1gram-20120701-1.gz to only lines where the ngram exactly matches a year (18xx, 19xx, or 20xx, where x is a digit)
#   decompress the first using gunzip, zless, zcat or similar
#   then filter out rows that match using grep -E, egrep, awk, or similar
#   write results to year_counts.tsv
=======
#!/bin/bash

# filter original 1gram file googlebooks-eng-all-1gram-20120701-1.gz to only lines where the ngram exactly matches a year (18xx, 19xx, or 20xx, where x is a digit)
#   decompress the first using gunzip, zless, zcat or similar
#   then filter out rows that match using grep -E, egrep, awk, or similar
#   write results to year_counts.tsv
>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
=======
#!/bin/bash

# filter original 1gram file googlebooks-eng-all-1gram-20120701-1.gz to only lines where the ngram exactly matches a year (18xx, 19xx, or 20xx, where x is a digit)
#   decompress the first using gunzip, zless, zcat or similar
#   then filter out rows that match using grep -E, egrep, awk, or similar
#   write results to year_counts.tsv
>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
