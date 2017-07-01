class Client < ApplicationRecord
  has_many :allocation

  validates :name, presence: { message: 'Preencha o seu nome' }
  validates :address, presence: { message: 'Preencha o email' }
  validates :phone, presence: { message: 'Preencha o telefone' }
  validates :phone, phone: { message: 'Telefone inválido' }
  validates :cpf, presence: { message: 'Preencha seu CPF' }
  validates :cpf, uniqueness: { message: 'CPF já cadastrado' }
  validates_cpf_format_of :cpf, :message => 'CPF inválido'

end
