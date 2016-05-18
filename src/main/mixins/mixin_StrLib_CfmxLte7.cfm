<!---
 Checks if a value is a JSON string.
 
 @param testValue 	 Value to check. (Required)
 @return Returns a boolean. 
 @author Stefan Vesterlund (&#115;&#116;&#101;&#102;&#97;&#110;&#46;&#118;&#101;&#115;&#116;&#101;&#114;&#108;&#117;&#110;&#100;&#64;&#103;&#109;&#97;&#105;&#108;&#46;&#99;&#111;&#109;) 
 @version 1, April 9, 2007 
--->
<cffunction name="isJSON" output="false" returntype="boolean" access="public">
	<cfargument name="testValue" required="true" type="any">
	<!---
	NOTE: This function does not check if it is a syntatically correct JSON
	string, just if it is an "attempted" JSON 
	Author: Stefan.Vesterlund@gmail.com 
	--->
	<cfif NOT isSimpleValue(arguments.testValue)>
		<!--- if it is not a string, it is not JSON --->
		<cfreturn false>
	</cfif>

	<!--- remove eventual () from string (a common "invalid key" workaround") --->
	<cfset arguments.testValue=replace(arguments.testValue,'(',',','all')>
	<cfset arguments.testValue=replace(arguments.testValue,')',',','all')>  

	<cfif (left(arguments.testValue,1) is "{" OR left(arguments.testValue,2) is "[{") and (right(arguments.testValue,1) is "}" OR right(arguments.testValue,2) is "}]")>
		<cfreturn true>
	</cfif>
	<cfreturn false>
</cffunction>
