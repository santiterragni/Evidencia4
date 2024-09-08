class maquina_burbujas:
    def __init__(self):
        self._largo = 35
        self._ancho = 21
        self._alto = 17
        self._peso = 4.2
        self._encendido = False
    
    def encender (self, inicio):
        self.encendido = inicio

        if (self._encendido == True):
            control = self._control_tanque()
        
        if (self._encendido == True and control == True):

            return "La maquina de burbujas está encendida"
        
        elif (self._encendido == True and control == False):

            return "Hay un problema en el tranque, no puede iniciar la máquina. Por favor revisar"

        else: 
            
            return "La máquina de burbujas está apagada"


    def _control_tanque(self):
        print("Se está realizando un control interno de la máquina")
        self.jabon_liquido = "OK"
        self.agua = "OK"
        self.capacidad_tanque = 700

        if (self.jabon_liquido == "OK" and self.agua == "OK" and self.capacidad_tanque <= 700): 

            return True
        
        else: 
            return False
        
    def __str__(self):

        return f"La Máquina de Burbujas:\nTiene un ancho de:{self._ancho}cm,\nTiene un alto de: {self._alto}cm,\nTiene un largo de:^{self._largo}cm,\nAdemás tiene un peso de:{self._peso}kg"
        
maquina = maquina_burbujas()