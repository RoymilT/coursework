<<<<<<< HEAD
<<<<<<< HEAD
#!/bin/bash

# use curl or wget to download the version 2 of the total counts file, googlebooks-eng-all-totalcounts-20120701.txt

wget http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-totalcounts-20120701.txt

# update the timestamp on the resulting file using touch
# do not remove, this will keep make happy and avoid re-downloading of the data once you have it
touch googlebooks-eng-all-totalcounts-20120701.txt
=======
#!/bin/bash

# use curl or wget to download the version 2 of the total counts file, googlebooks-eng-all-totalcounts-20120701.txt

# update the timestamp on the resulting file using touch
# do not remove, this will keep make happy and avoid re-downloading of the data once you have it
touch googlebooks-eng-all-totalcounts-20120701.txt
>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
=======
#!/bin/bash

# use curl or wget to download the version 2 of the total counts file, googlebooks-eng-all-totalcounts-20120701.txt

# update the timestamp on the resulting file using touch
# do not remove, this will keep make happy and avoid re-downloading of the data once you have it
touch googlebooks-eng-all-totalcounts-20120701.txt
>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
