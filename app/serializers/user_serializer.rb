class UserSerializer < ActiveModel::Serializer
  attributes :id, :is_admin, :user_name, :email, :password_digest
end
