class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :place

  enum state: %w[ausente visita_realizada visita_recusada]

  validates :state, presence: true

  validates_presence_of :focus_quantity, if: -> { visita_realizada? }

  validates :dengue_last_3m, inclusion: [true, false], if: -> { visita_realizada? }

  validates :eliminated, inclusion: [true, false], if: -> { preencher_eliminated? }

  validates :eliminated, exclusion: [true, false], if: -> { fica_sem_preencher_eliminated? }
  # validates :eliminated, exclusion: { in: [true, false] }, if: -> { fica_sem_preencher_eliminated? }

  private

  def visita_realizada?
    state == 'visita_realizada'
  end

  def preencher_eliminated?
    state == 'visita_realizada' && focus_quantity.positive?
  end

  def fica_sem_preencher_eliminated?
    state == 'visita_realizada' && focus_quantity == 0
  end
end
