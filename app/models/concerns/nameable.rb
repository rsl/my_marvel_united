module Nameable
  extend ActiveSupport::Concern

  included do
    include FriendlyId
    include PgSearch::Model

    validates :name, presence: true, uniqueness: true

    friendly_id :name, use: :slugged

    pg_search_scope(
      :search_by_name,
      using: { tsearch: { prefix: true } },
      against: { name: 'A', real_name: 'B' },
      order_within_rank: 'name ASC',
    )
  end
end
