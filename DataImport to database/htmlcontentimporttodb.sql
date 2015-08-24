create temporary table import12 (content text);
    
load data local infile '/Users/harikrishnangopaljanakiraman/Documents/New Workspace/dummy/csrchange.html'into table import12 fields terminated by '|' lines starting by '<START>' terminated by '<END>'  (@content)  set content = @content;

update import13 a join import12 b on a.sectionid = 1 set a.content = b.content;
    
drop table import12;