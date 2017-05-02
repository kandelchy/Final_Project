class Book < ActiveRecord::Base

    belongs_to :author
    validates_presence_of :title, :isbn
    validates_uniqueness_of :isbn
    
end
