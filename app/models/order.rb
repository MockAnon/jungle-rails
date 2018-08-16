class Order < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true

  after_create :order_receipt_email

  def order_receipt_email
    OrderMailer.order_email(self).deliver_now
  end

end
