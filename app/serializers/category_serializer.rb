class CategorySerializer < ActiveModel::Serializer
  attributes :name
  has_many :product
end
