class Book < ActiveRecord::Base

    belongs_to :author
    has_many :purchases
    has_many :reviews
    accepts_nested_attributes_for :reviews
    validates_presence_of :title, :isbn
    validates_uniqueness_of :isbn
    
    mount_uploader :image, ImageUploader
    
    # scope :category, -> (category) { where category: category }

    def self.search(search)
        if search
            where("title LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%")
        else
            where(nil)
        end
    end
    

end
