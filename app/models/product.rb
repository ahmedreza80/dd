class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :previewo, PreviewoUploader
	mount_uploader :previewt, PreviewtUploader
	mount_uploader :previewth, PreviewthUploader
	validates :description, presence: true, length: { maximum: 600 }
	def category_enum
    # Do not select any value, or add any blank field. RailsAdmin will do it for you.
    ['Bench', 'Bed Side Table', 'Book Cabinet', 'Chair', 'Tv Cabinet', 'Center Table', 'Side Table', 'Spot Table', 'Writing Table', 'Fabricated Sofa Set', 'Wooden Sofa Set', 'One Seater Sofa', 'Two Seater Sofa', 'Three Seater Sofa', 'L Shaped Sofa', 'Dining Table', 'Kitchen Cabinets', 'Queen Size Bed', 'King Size Bed', 'Single Bed', 'Double Bed', 'Storage Bed', 'Upholstered Bed', 'Sofa Cum Bed', 'Divan Bed', 'Kids Bed', 'Wardrobe', 'Dressing Table', 'Kids Study Table', 'Kids Wardrobe' ]
    # alternatively
    # { green: 0, white: 1 }
    # [ %w(Green 0), %w(White 1)]
  end
end
