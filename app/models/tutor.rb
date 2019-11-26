class Tutor < ApplicationRecord
  before_destroy :ensure_not_referenced_by_any_line_item
  has_many :line_items

  validates :name, :about, :image_url, :subject, :price, :username, presence: true
  validates :username, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

  enum subject: {
    "English" => 0,
    "Irish" => 1,
    "Maths" => 2,
	"History" => 3,
	"Geography" => 4,
	"German" => 5,
	"French" => 6
  }
  private

    # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
