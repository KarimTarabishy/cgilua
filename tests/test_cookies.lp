#!/usr/bin/env cgilua.cgi
<?lua
local cookies = require"cgilua.cookies"
CL_COOKIE = "cgilua_cookie"

local test = cookies.get (CL_COOKIE)
cookies.sethtml (CL_COOKIE, os.date())
?>

<h1>Testing Cookies library</h1>

<%= CL_COOKIE%> = <%= tostring(test)%><br>
Assigning current date to cookie!<br>
Reload this script to check cookie's value!
