class SubjectContact < ApplicationRecord
    
    translates :name, :fallbacks_for_empty_translations => true
    
end
