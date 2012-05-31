#
# vendor/plugins/redmine_wiki_pre_util/init.rb
#
require 'redmine'

Redmine::Plugin.register :redmine_wiki_pre_util do
  name 'Redmine Wiki PRE Util'
  author 'argszero'
  author_url 'https://github.com/argszero/redmine_wiki_pre_util'
  description 'Allows you to embedd PRE Tage into your wiki'
  version '0.0.1'

  Redmine::WikiFormatting::Macros.register do
    desc "Embed pre tag"
    macro :pre do |obj, args|
        result = "<pre>"+CGI::unescapeHTML(args.join(","))+"</pre>"
        return result
    end	
  end
end
