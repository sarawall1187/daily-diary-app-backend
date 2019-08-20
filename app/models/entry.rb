class Entry < ApplicationRecord
    belongs_to :user
    

    def created_at
        I18n.l(super)    
    end
end
