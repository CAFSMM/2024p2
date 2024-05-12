=begin
Cree un programa que reciba un string de una operación matemática y lo resuelva.
Considere que la operación solo usara dos términos enteros.
El programa funciona hasta que el usuario ingrese 'salir'. Al principio de cada ciclo debe mostrar las operaciones previamente realizadas.
Operaciones aceptadas: + - / *
Puede asumir que el usuario no ingresa operaciones incorrectas.
Puede asumir que el usuario ingresa el texto sin símbolos ajenos a los números o los símbolos pedidos.
=end
hist = []

while true
	puts hist
	puts
	print 'ingrese una operacion: ' ; input = gets.chomp.to_s.downcase
	if input.eql? 'salir' then break end
	op = ''
	operation = ['','','']
	nums = '0123456789' ; simb = '+-/*'
	i = 0
	input.each_char { |chr| if nums.include?(chr) or simb.include?(chr) then op += chr end }
	op.each_char do |chr|
		if i == 0 then nums.include?(chr) ? operation[i]+=chr : i+=1 end
		if i == 1 then simb.include?(chr) ? operation[i]+=chr : i+=1 end
		if i == 2 then nums.include?(chr) ? operation[i]+=chr : i+=1 end
		i > 2 ? break : next
	end
	res = 0
	if operation[1].eql? '+' then res = operation[0].to_i + operation[2].to_i end
	if operation[1].eql? '-' then res = operation[0].to_i - operation[2].to_i end
	if operation[1].eql? '*' then res = operation[0].to_i * operation[2].to_i end
	if operation[1].eql? '/' then res = operation[0].to_i / operation[2].to_i end
	hist.append op+'='+res.to_s
end