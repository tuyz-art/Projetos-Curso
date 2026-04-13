 // Função principal que é chamada quando clicamos no botão "Converter" 
function converter() { 
 
    // 1. PEGAR O VALOR DIGITADO NO INPUT 
    // Acessa o elemento com id="celsius" no HTML 
    // .value pega o que o usuário digitou 
    let celsius = document.getElementById("celsius").value; 
     
    // 2. CONVERTER O VALOR PARA NÚMERO 
    // parseFloat transforma o texto digitado em um número decimal 
    celsius = parseFloat(celsius); 
     
    // 3. VERIFICAR SE O VALOR É UM NÚMERO VÁLIDO 
    // isNaN verifica se o valor NÃO é um número 
    if (isNaN(celsius)) { 
 
        // Exibe uma mensagem de alerta para o usuário 
        alert("Por favor, digite um número válido!"); 
 
        // Interrompe a execução da função 
        return; 
    } 
     
    // 4. CALCULAR A TEMPERATURA EM FAHRENHEIT 
    // Fórmula: (°C × 9/5) + 32 
    let fahrenheit = (celsius * 9 / 5) + 32; 
     
    // 5. CALCULAR A TEMPERATURA EM KELVIN 
    // Fórmula: °C + 273.15 
    let kelvin = celsius + 273.15; 
     
    // 6. MOSTRAR OS RESULTADOS NA TELA 
     
    // toFixed(2) limita o número a 2 casas decimais 
    // innerHTML altera o conteúdo do elemento no HTML 
    document.getElementById("fahrenheit").innerHTML = 
        fahrenheit.toFixed(2) + " °F"; 
     
    document.getElementById("kelvin").innerHTML = 
        kelvin.toFixed(2) + " K"; 
} 
 
 
// Função chamada quando clicamos no botão "Limpar Tudo" 
function limparTudo() { 
 
    // 1. LIMPAR O CAMPO DE DIGITAÇÃO 
    // Define o valor do input como vazio 
    document.getElementById("celsius").value = ""; 
     
    // 2. RESETAR OS RESULTADOS PARA "--" 
    // Volta o texto inicial dos resultados 
    document.getElementById("fahrenheit").innerHTML = "--"; 
    document.getElementById("kelvin").innerHTML = "--"; 
     
    // 3. COLOCAR O CURSOR DE VOLTA NO INPUT 
    // Facilita para o usuário digitar novamente 
    document.getElementById("celsius").focus();}