puts "\n"
puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets 

puts "\n\n\n\n\n\n"
puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um numero secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"

limite_de_tentativas = 5

for tentativas in 1..limite_de_tentativas
    puts "\n\n\n\n"
    puts "Tentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    chute = gets
    puts "Será que acertou? Voce chutou " + chute

    acertou = numero_secreto == chute.to_i

    if acertou
        puts "Acertou!"
        break
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "O numero secreto é maior!"
        else
            puts "O numero secreto é menor!"
        end
    end
end