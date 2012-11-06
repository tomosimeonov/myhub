 Setup Guide

1. Download MarKLogic 6

http://developer.marklogic.com/products

2. Install MarkLogic 

 - Windows x64 : Standart Installation 

 - Red Hat x64 : As the root user, install the package with the following command:
	rpm -i /tmp/MarkLogic-6.0-1.amd64.rpm

 - Mac OS : http://docs.marklogic.com/guide/installation/procedures#id_28962

3. Start MarkLogic

http://docs.marklogic.com/guide/installation/procedures#id_28962

4. Browser : localhost:8000

5. Exress License and create admin 

6. Copy the files from Setup into 

 - Windows : c:\Program Files\MarkLogic\Modules

 - Red Hat Linux :	/opt/MarkLogic/Modules

 - Mac OS : ~/Library/Application/Modules


7. In http://localhost:8000/qconsole/

copy this and run it
xdmp:invoke("/run-all.xqy");
 
