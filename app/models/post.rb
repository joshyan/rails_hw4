class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :post_tag_ref
	has_many :tags, :through => :post_tag_ref

	after_create :add_posts_count
	before_destroy :del_posts_count
	after_update :change_category

	private
		def add_posts_count
			category = Category.find(self.category_id)
			category.posts_count += 1
			category.save
		end

		def del_posts_count
			category = Category.find(self.category_id)
			category.posts_count -= 1
			category.save
		end

		def change_category
			if self.category_id_changed?
				old_category_id = self.category_id_was
				new_category_id = self.category_id

				old_category = Category.find(old_category_id)
				new_category = Category.find(new_category_id)

				old_category.posts_count -= 1
				old_category.save

				new_category.posts_count += 1
				new_category.save
			end
		end

end
