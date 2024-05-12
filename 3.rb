=begin
Suponga que le dan una lista de varios textos, debe calcular el peso de cada texto segun lo siguiente:
Se asigna un valor a cada letra, de la siguiente manera:

a = 1, b= 2, c = 3 . . . hasta la z.
Las mayúsculas valen el doble.
Puede considerar que no se ingresaran "ñ" o "Ñ"

Por cada número en el texto, se suma el valor de ese número al ‘peso’.

Hay símbolos que restan valor al ‘peso’.
* = -1 , ~ = -2 , & = -3 , $ = -5, # = -10
El resto de símbolos no afecta nada.

Muestre en pantalla una lista con el peso de cada texto de la lista inicial.
La palabra con más valor.
La palabra con menos valor.
El promedio de valor de las palabras.
=end
minusculas = ('a'..'z').to_a
mayus = ('A'..'Z').to_a
simb = '*~&$#'


textos = ['holanda','queTalCA','12LALA','*-*']

textos.each do |texto|
	value = 0
	texto.each_char do |letra|
		if minusculas.include? letra then value+=minusculas.find_index(letra)+1 end
		if mayus.include? letra then value+=(mayus.find_index(letra)+1)*2 end
		if letra.eql? '*' then value-=1 end
		if letra.eql? '~' then value-=2 end
	end
end