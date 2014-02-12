Spree::User.class_eval do 
  has_many :favorites
  has_many :favorite_products, :through => :favorites, :class_name => 'Spree::Product', :source => 'product'

  def favorized_product?(product_id)
    !favorites.find_by_product_id(product_id).blank?
  end
end
