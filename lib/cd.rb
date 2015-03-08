class CD < Midia
	def initialize (titulo, valor, categoria)
		@titulo = titulo
		@valor = valor
		@categoria = categoria	
	end

    def to_s
    	%Q{Tiulo: #{@titulo}, Valor: #{@valor}}      	
    end
end