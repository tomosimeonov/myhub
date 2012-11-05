xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace fpml = "http://www.fpml.org/2007/FpML-4-4";
import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";

let $config := admin:get-configuration()
let $dbid := xdmp:database("openspace")
let $rangespec := admin:database-range-element-index("int", "http://www.fpml.org/2007/FpML-4-4",
                "price", "",
		fn:false() )
  return
  admin:save-configuration(admin:database-add-range-element-index($config, $dbid, $rangespec))

;

import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";

let $config := admin:get-configuration()
let $dbid := xdmp:database("openspace")
let $rangespec := admin:database-range-element-index("string", "http://www.fpml.org/2007/FpML-4-4",
                "sentBy", "http://marklogic.com/collation/",
		fn:false() )
  return
  admin:save-configuration(admin:database-add-range-element-index($config, $dbid, $rangespec))