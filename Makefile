SRC=.
DST_DIR=/afs/cs.cmu.edu/academic/class/10701-s26/www
DST_CS=$(USER)@linux.gp.cs.cmu.edu:$(DST_DIR)
DST_AN=$(USER)@linux.andrew.cmu.edu:$(DST_DIR)

push: push-cs

push-cs: 
	rsync --rsync-path="aklog cs.cmu.edu && rsync" -av -r --delete-after $(SRC) $(DST_CS)

push-an: 
	rsync --rsync-path="aklog cs.cmu.edu && rsync" -av -r --delete-after $(SRC) $(DST_AN)
