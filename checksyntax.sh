for f in  `git diff HEAD~1 --name-only |grep '\.php'`
do
	if [ -a $f ]
	then
		 result=`php -l -f $f`
		 if `echo $result| grep -q "No syntax errors detected"`; then
			true #do nothing
		 else
			echo $result
			exit -1
		 fi
	fi
done
exit 0
