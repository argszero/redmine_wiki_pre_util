# Why ? 

ref: http://www.redmine.org/boards/2/topics/30975
If you want enable link inside a pre tag, you will find it is impossible, as below:
	< pre >
	       +---topic1
	       |
	       +---topic2
	       |
	topic -+          +---<a href="detail1">detail1</a>
	       |          |
	       +---topic3-+---[[detail2]]
	                  |
	                  +---"detail3":http://xxx.org/detail3
	< /pre >

# How ? 

	{{pre(
	<notextile>
	       +---topic1
	       |
	       +---topic2
	       |
	topic -+          +---<a href="detail1">detail1</a>
	       |          |
	       +---topic3-+---[[detail2]]
	                  |
	                  +---"detail3":http://xxx.org/detail3
	</notextile>
	)}}

# Start !

Navigate to:

    [redmine_install_path]/vendors/plugins
Clone this repo:

    git clone git@github.com:argszero/redmine_wiki_pre_util.git
Restart Redmine (example below is using bitnami stack): 

    sudo /etc/init.d/bitnami restart

# Thanks !

* [redmine-wiki-html-utility](http://www.arlocarreon.com/blog/redmine/redmine-wiki-html-utility/)

