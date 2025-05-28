module Articles
  class CreatorValidation
    include ActiveModel::Model
    attr_accessor :voucher, :date, :hour

    validates :voucher, presence: true

    validate :voucher_availability!

    def to_context = {redeemed_at: Time.current, start_at:, end_at:}

    private

    def voucher_availability!
      errors.add(:base, :expired) if voucher.expired?

      @message_error = "Voucher não pôde ser resgatado" if errors.any?
    end
  end
end
