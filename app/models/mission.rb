class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet

  validates :name, presence: true

  # does not allow a scientist to join the same mission twice 
  validates :scientist, uniqueness: {scope: :name}
end
