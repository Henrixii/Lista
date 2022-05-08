class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :file_url
  has_one :category
  def file_url
    if object.file.attached?
      Rails.application.routes.url_helpers.rails_blob_path(object.file, only_path: true)
    end
  end
end
