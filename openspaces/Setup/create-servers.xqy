xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace fpml = "http://www.fpml.org/2007/FpML-4-4";

import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";


let $config := admin:get-configuration()
return  admin:save-configuration(admin:xdbc-server-create(
                $config, 
                admin:group-get-id($config, "Default"), 
                "openspacexdbc", 
                "/",
                8022, 
                0, 
                xdmp:database("openspace") ))

;

import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";


let $config := admin:get-configuration()
return  admin:save-configuration(admin:http-server-create(
                $config, 
                admin:group-get-id($config, "Default"), 
                "openspacehttp", 
                "/",
                8023, 
                0, 
                xdmp:database("openspace") ))
;


import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";

let $config := admin:get-configuration()
let $groupid := admin:group-get-id($config, "Default")
return	
	admin:save-configuration(
			admin:appserver-set-authentication($config, admin:appserver-get-id($config, $groupid, "openspacehttp"),
         		"basic"))

;

import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";

let $config := admin:get-configuration()
let $groupid := admin:group-get-id($config, "Default")
return
	admin:save-configuration( 
			admin:appserver-set-authentication($config, admin:appserver-get-id($config, $groupid, "openspacexdbc"),
         		"basic"))