xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace fpml = "http://www.fpml.org/2007/FpML-4-4";

(: Create openspace role :)
import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";
import module namespace sec="http://marklogic.com/xdmp/security" at 
    "/MarkLogic/security.xqy";

sec:create-role(
    "openspace",
    "openspace user",
    (),
    (),
    ("opensapce"))


;

import module namespace sec="http://marklogic.com/xdmp/security" at 
    "/MarkLogic/security.xqy";

(
sec:privilege-add-roles(
    "http://marklogic.com/xdmp/privileges/any-uri",
    "execute",
    ("openspace"))

,
sec:privilege-add-roles(
    "http://marklogic.com/xdmp/privileges/any-collection",
    "execute",
    ("openspace"))
,
sec:privilege-add-roles(
    "http://marklogic.com/xdmp/privileges/xdbc-eval",
    "execute",
    ("openspace"))

) 


;

import module namespace admin = "http://marklogic.com/xdmp/admin" 
		  at "/MarkLogic/admin.xqy";
import module namespace sec="http://marklogic.com/xdmp/security" at 
    "/MarkLogic/security.xqy";

declare function local:adduser($i as xs:integer)
{
   if( $i lt 9)
  then  
    let $nothing := sec:create-user(
                     fn:concat("openspace_",$i),
                     "openspace user",
                     "openspace",
                     ("rest-reader", "qconsole-user","app-user", "openspace"),
                     (),
                     ())

   return local:adduser($i + 1)
  else
     ()
};

local:adduser(1)
