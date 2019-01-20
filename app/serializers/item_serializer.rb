class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :is_amazon, :amazon_url
end
