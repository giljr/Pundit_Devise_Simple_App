class Post < ApplicationRecord
    resourcify  # Important for Rolify to track roles per post

    has_many :roles, as: :resource
    enum :post_type, { published: 0, unpublished: 1 }
  
    # These are optional but useful for querying
    def creators
      User.with_role(:creator, self)
    end
  
    def editors
      User.with_role(:editor, self)
    end
end
