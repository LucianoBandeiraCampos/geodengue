class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :place

  enum state: %w[ausente visita_realizada visita_recusada]

  validates_presence_of :focus_quantity, if: -> { visita_realizada? }

  validates :eliminated, :dengue_last_3m, inclusion: [true, false], if: -> { visita_realizada? }

  validates :state, presence: true

  private

  def visita_realizada?
    state == 'visita_realizada'
  end
end
