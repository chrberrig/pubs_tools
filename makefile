#INSTALLPATH = ${DESTDIR}${PREFIX}/usr/bin/
INSTALLPATH = /usr/bin/
TOOLS = extract_bibid

all: 
	
install: ${TOOLS}
	[ -z $$(ls ${INSTALLPATH} | grep ${TOOLS}) ] && cp ${TOOLS} ${INSTALLPATH}
#	read -p "location of .pubsrc/config file: " rc
#	echo "$${rc}"

uninstall:
	rm -i ${INSTALLPATH}${TOOLS}
	# echo ${INSTALLPATH}${TOOLS}
