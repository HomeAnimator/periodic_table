/ <Column>.*<\/Column>/{a=$0;gsub("<[/]*Column>","",a);gsub(" *","",a);printf  "%s|",a} 
/<\/Columns>/{print ""} 
/<Cell>.*<\/Cell>/{a=$0;gsub("<[/]*Cell>","",a);gsub(" *","",a);printf  "%s|",a} 
/<\/Row>/{print ""}
