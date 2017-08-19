class Blog < ActiveRecord::Base

    def previous
      Blog.where(["id < ?", id]).last
    end
    
    def next
      Blog.where(["id > ?", id]).first
    end

end
