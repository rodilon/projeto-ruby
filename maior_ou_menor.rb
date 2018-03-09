def da_boas_vindas
    puts "\n"
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets 
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
    puts "Escolhendo um numero secreto entre 0 e 200..."
    sorteado = 175
    puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"
    sorteado
end

def pede_um_numero(tentativas, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    chute = gets
    puts "Será que acertou? Voce chutou " + chute
    chute
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute.to_i

    if acertou
        puts "Acertou!"
        return true
    end
    maior = numero_secreto > chute.to_i
    if maior
        puts "O numero secreto é maior!"
    else
        puts "O numero secreto é menor!"
    end
    false
end

da_boas_vindas 
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

for tentativas in 1..limite_de_tentativas
    chute = pede_um_numero tentativas, limite_de_tentativas

    if verifica_se_acertou numero_secreto, chute
        break
    end
end