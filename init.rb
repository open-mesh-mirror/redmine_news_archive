require 'redmine'

require_dependency 'redmine_news_archive'

Redmine::Plugin.register :redmine_news_archive do
  name 'news archive macro'
  author 'Sven Eckelmann'
  author_url 'https://git.open-mesh.org/redmine_news_archive.git'
  description 'News archive for pages'
  version '0.0'
end
