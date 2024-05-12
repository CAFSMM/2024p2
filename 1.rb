=begin
Considere que usted tiene una lista de strings (pueden contener números y símbolos).
Cree un algoritmo que permita al usuario ingresar una serie de caracteres (hasta 5 caracteres) y muestre todas las palabras que tengan al menos uno de los caracteres ingresados.	
Luego, el programa pide otro carácter y reemplaza todos los caracteres ingresados, por el nuevo carácter ingresado.
=end
filter_list = [] ; new_list = []
lista = ['lala12','perrito','sjka12','holanda']
print 'ingrese caracteres para buscar '
input = gets.chomp.to_s[0..4]
lista.each { |element| input.each_char { |letra| if element.include? letra then filter_list.append(element) ; break end } }
puts filter_list
puts 'ingrese caracter para reemplazar '
reempl = gets.chomp.to_s[0]
filter_list.each do |element|
	texto = ''
	element.to_s.each_char { |letra| input.include?(letra) ? texto += reempl : texto += letra }
	new_list.append(texto)
end
print new_list