class Product < ApplicationRecord
  belongs_to :category
  has_rich_text :description
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def self.search(params)
    if params[:q].present?
      return includes(params)
               .where("LOWER(title) LIKE LOWER(?)", "%#{params[:q].to_s.squish}%")
               .order(id: :desc)
               .paginate(page: params[:page] || 1, per_page: 10)
    end

    includes(params)
      .order(id: :desc)
      .paginate(page: params[:page] || 1, per_page: 10)
  end
end
