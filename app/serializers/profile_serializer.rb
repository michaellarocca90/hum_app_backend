class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :gender, :language, :opted_in, :bio, :type, :age, :zip_code, :first_name, :last_name
  has_one :user
end
