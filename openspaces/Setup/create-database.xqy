xquery version "1.0-ml";

import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";

(:
:   Create database
:)
let $config := admin:get-configuration()
return  admin:save-configuration(admin:database-create($config,"openspace",xdmp:database("Security"),xdmp:database("Schemas")))

(:Separate transaction:)
;


import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";
(:
 :  Create forest
 :)
 
admin:save-configuration(admin:forest-create(admin:get-configuration(), "openspace-forest", xdmp:host(), ()))


(:Separate transaction:)
;


import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";
(: 
 : Attach forest
 :)
let $config := admin:get-configuration()
return  admin:save-configuration(admin:database-attach-forest($config, xdmp:database("openspace"),xdmp:forest("openspace-forest") ))

  
