<cfcomponent output="false" hint="FileSysLib from cflib.org">
<!---
This library is part of the Common Function Library Project. An open source
	collection of UDF libraries designed for ColdFusion 5.0 and higher. For more information,
	please see the web site at:

		http://www.cflib.org

	Warning:
	You may not need all the functions in this library. If speed
	is _extremely_ important, you may want to consider deleting
	functions you do not plan on using. Normally you should not
	have to worry about the size of the library.

	License:
	This code may be used freely.
	You may modify this code as you see fit, however, this header, and the header
	for the functions must remain intact.

	This code is provided as is.  We make no warranty or guarantee.  Use of this code is at your own risk.
--->

<cffunction name="init" >
	<cfreturn this />
</cffunction>

<!---
JAJ: It used to be easier to grab the whole lib, but since it's not easy anymore,
we'll just add functions as we need them.

From Slack https://cfml.slack.com #cfml-general on 5/18/2016

jamiejackson
	anybody remember how to grab a whole lib (e.g., FileSysLib) from cflib.org?
	i haven't done it in a while, and i can't remember. ( @raymondcamden )

raymondcamden
	@jamiejackson: i removed that as not many people were using it - i could add
	it back - but it wont be any time soon - sorry :confused:
	if you go to /all.html you get ​*everything*​
--->

<cfscript>
/**
 * Returns extension defined by all characters following last period.
 * v2 by Ray Camden
 * 
 * @param name 	 File name to use. (Required)
 * @return Returns a string. 
 * @author Alexander Sicular (as867@columbia.edu) 
 * @version 2, May 9, 2003 
 */
function getExtension(name) {  
    if(find(".",name)) return listLast(name,".");
    else return "";
}
</cfscript>

</cfcomponent>