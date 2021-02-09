class Municipe < ApplicationRecord
    validates :nome_completo, presence: true
    validates :cpf, presence: true
    validates :email, presence: true
    validates :data_nascimento, presence: true
    validates :telefone, presence: true
    validates :foto, presence: true
    validates :status, presence: true

    scope :get_nome, -> { order(:nome_completo) }
end
