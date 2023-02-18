require 'redmine'


module RedmineNewsArchive
  def self.included(base)
    Redmine::WikiFormatting::Macros.register do
      desc "Show list of news"
      macro :news_archive do |obj, args|
        args, options = extract_macro_options(args, :parent)

        if obj
          if obj.is_a? WikiContent
            project = obj.page.wiki.project
          else
            project = obj.project
          end
        else
          project = Project.visible.where(identifier: params[:project_id]).first
        end

        if project
          render partial: 'hooks/news_archive', project: project
        end
      end
    end
  end
end

MyController.send(:include, RedmineNewsArchive)
