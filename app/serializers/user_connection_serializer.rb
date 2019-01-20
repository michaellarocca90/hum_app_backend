class UserConnectionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :connection
end
