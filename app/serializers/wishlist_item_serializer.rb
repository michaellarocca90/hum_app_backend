class WishlistItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :wishlist
  has_one :item
end
