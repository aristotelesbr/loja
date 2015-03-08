class Revista
	include Mongoid::Document

	field :titutlo, type: String
end

mundo_j = Revista.new titulo: "Mundo J"

=begin
class SomeClass
	def initialize(value1)
		@value1 = value1
	end

	def value_printer(value2)
		lambda {puts "Value1: #{@value1}, Value2: #{value2}"}
	end
end

def caller(some_closure)
	some_closure.call
end

some_class = SomeClass.new(5)
printer = some_class.value_printer("some value")

caller(printer)


class SomeClass
	def initialize(value1)
		@value1 = value1
	end

	def value_printer(value2)
		lambda {puts "Value1: #{@value1}, Value2: #{value2}"}
	end
end

def caller(some_closure)
	some_closure.call
end

some_class = SomeClass.new(5)
printer = some_class.value_printer("some value")

caller(printer)



#lista_de_convidados = %w[Jonh doe, Mark, Zack]
class Lista
	attr_reader :nome

	def initialize(nome)
		@nome = nome
	end

	def adciona
		@lista = []
		@lista << nome
	end

	def buscar_convidados
		@lista.each do |e| 
			p "#{e}, esta na lista de convidados!"
		end		
	end
	
end

convidado1 = Lista.new("Gilson")
convidado1.adciona
convidado1.buscar_convidados

convidado2 = Lista.new("Etevaldo")
convidado2.adciona
convidado2.buscar_convidados

convidado3 = Lista.new("Renato Wget Franco")
convidado3.adciona
convidado3.buscar_convidados




compras = [3,4,5,56,6]

#inject soma todos os valores de um Array
total = compras.inject(& :+)
p total

p "------------------------------------------------"

metodo_select = compras.select(&:even?)
p metodo_select

p "------------------------------------------------"

#O metodo map mapeia um array e as possições e retorna um novo array
metodo_map = metodo_select.map { |e| puts e / 2 }.to_a

p "------------------------------------------------"

#o collect retorna valores de um array com determinado criterio
metodo_collect = metodo_map.collect {|e| p e }

#total = Proc.new {|e| puts e "R$ #{compras}"}
#total.call()


    Anotaçoes Gerais
***Blocos***
I - Por definicao BLOCOS sao usados com metodos. EX:
[array].each {|item| puts item}
Geralmente blocos ficam entre o do end  "doend" 
**Nao e possivel atribuir um bloco a uma variavel para sera preciso do uso das:

***LAMBDAS***
II - E possivel armazenar os lambdas em variáveis para executar depois.
 
puts_lambda = lambda do
  puts "lambda"
end
puts_lambda.call

A sintaxe para criação de um lambda é bem simples,
basta chamar “lambda” e passar um bloco qualquer.
=end