for f in *.dot
do
	cp stdDigraphPrefix.txt tmpGraph.txt
	cat $f | sed -e 's/\\#/#/g' >> tmpGraph.txt
	cat stdDigraphSuffix.txt >> tmpGraph.txt
	dot -Tps2 -o ${f%dot}ps tmpGraph.txt ;
done
