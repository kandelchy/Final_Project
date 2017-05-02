class Author < ActiveRecord::Base

    has_many :books
    accepts_nested_attributes_for :books
    validates_presence_of :first_name, :last_name
    def full_author_name
        "#{first_name} #{last_name}"
    end
end
