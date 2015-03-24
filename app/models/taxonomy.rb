class Taxonomy < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :category
  has_many :taxonomies, class_name: "Taxonomy", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Taxonomy"
  validates :name, presence: true
  validates :name, uniqueness: {case_sensitive: false, scope: [:category_id, :parent_id]}

  scope :only_parents, -> {where(parent_id: nil)}
  scope :ordered, -> {order("#{self.table_name}.order DESC")}

  rails_admin do
    exclude_fields :slug
  end
end