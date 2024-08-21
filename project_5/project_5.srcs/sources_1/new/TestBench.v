`timescale 1ns / 1ns  // Unidad de tiempo es 1 ns, con una precisión de 1 ns

module top_tb;

    reg clk;
    reg [1:0] buttons;
    wire [15:0] Leds;
    
    // Instancia del módulo top
    top uut (
        .clk(clk),
        .buttons(buttons),
        .Leds(Leds)
    );

    // Generador de reloj con un período de 10 ns (100 MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Cambia cada 5 ns, creando un reloj de 10 ns
    end

    // Simulación de pulsaciones de botones
    initial begin
        // Inicialización de señales
        buttons = 2'b00;
        
        // Esperar unos ciclos de reloj
        #20000000;  // Esperar 20 ms
        
        // Pulsar botón para incrementar (2'b10) por 200 ms
        buttons = 2'b01;
        #500000000;  // Mantener pulsado el botón por 200 ms
        buttons = 2'b00;
        #200000000;  // Esperar y observar el resultado por 20 ms
        
        // Pulsar botón para incrementar (2'b10) por 200 ms
        buttons = 2'b10;
        #500000000;  
        buttons = 2'b11;
        #200000000; 
        
        // Pulsar botón para decrementar (2'b01) por 200 ms
        buttons = 2'b01;
        #500000000;  
        buttons = 2'b00;
        #200000000; 
        
        
        // Detener la simulación
        $stop;
    end
    
endmodule


