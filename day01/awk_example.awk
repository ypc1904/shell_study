#!/usr/bin/awk -f 

BEGIN { 
	print "Header Infos"
	print "Auther:"
	print "File:"
}

{ 
	print $0
}

END { 
	print "End of this file"
}

