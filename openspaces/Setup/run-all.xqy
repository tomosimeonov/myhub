xquery version "1.0-ml";

xdmp:invoke("/create-database.xqy");

xdmp:invoke("/create-servers.xqy");

xdmp:invoke("/creat-openspace-user.xqy", (),
		  <options xmlns="xdmp:eval">
		    <database>{xdmp:database("Security")}</database>
		  </options>);

xdmp:invoke("/create-indexes.xqy", (),
		  <options xmlns="xdmp:eval">
		    <database>{xdmp:database("openspace")}</database>
		  </options>);

xdmp:invoke("/create-documents.xqy", (),
		  <options xmlns="xdmp:eval">
		    <database>{xdmp:database("openspace")}</database>
		  </options>);