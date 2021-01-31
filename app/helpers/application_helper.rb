module ApplicationHelper
    def full_title(page_title='')
        base_title = "Ruby on Rails Tutorial Sample App"
        if page_title.empty?
            base_title
        else
            "#{page_title} | #{base_title}"
        end
    end
    def initials(name)
        name = name.split(' ')
        name[0][0] + '.' + name[1][0]+'.'
    end
end
