class SkillSerializer < ActiveModel::Serializer
  attributes :id, :skill_name
  has_one :user
end
