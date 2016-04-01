module Innbox
  module Model
    extend ActiveSupport::Concern

    included do
      belongs_to :sender, class_name: Innbox.config.user_class
      belongs_to :receiver, class_name: Innbox.config.user_class

      validates :sender_id, :receiver_id, :title, :body, presence: true

      scope :recent, -> { order('id desc') }
      scope :unread, -> { where(read_at: nil) }
    end

    def read?
      self.read_at.present?
    end
  end
end
