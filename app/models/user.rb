class User < ApplicationRecord
    
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: " inválido" }
    validates :phone, presence: true, uniqueness: true, length: { minimum: 10, maximum: 15, message: "Telefone inválido" }
    validates :cpf, presence: true, uniqueness: true, length: { minimum: 11, maximum: 11, message: " inválido" }

    # def validar_cpf
    #     if cpf.present? && !cpf_valido?
    #       errors.add(:cpf, "CPF inválido")
    #     end
    # end
    
    # def cpf_valido?
    #     return false if cpf.nil?
    
    #     digitos = cpf.scan(/[0-9]/)
    #     return false if digitos.size != 11
    
    #     soma = 0
    #     10.downto(3) do |n|
    #       soma += digitos[10 - n].to_i * n
    #     end
    
    #     soma *= 10
    #     resto = soma % 11
    #     resto = 0 if resto == 10
    
    #     return false if resto != digitos[9].to_i
    
    #     soma = 0
    #     11.downto(4) do |n|
    #       soma += digitos[11 - n].to_i * n
    #     end
    
    #     soma *= 10
    #     resto = soma % 11
    #     resto = 0 if resto == 10
    
    #     return false if resto != digitos[10].to_i
    
    #     true
    # end

end
