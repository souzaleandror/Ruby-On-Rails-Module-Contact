class SubjectContact < ApplicationRecord
    
    translates :name, :variable_name, :fallbacks_for_empty_translations => true
    
end
