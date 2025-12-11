if (mouse_hovering)
{
    // Verifica o status do seu objeto de energia
    // (Exatamente como na sua lógica anterior)
    if (obj_interact_power.ligando == true)
    {
        texto_tooltip = "Desligar";
    }
    else
    {
        texto_tooltip = "Ligar";
    }
}