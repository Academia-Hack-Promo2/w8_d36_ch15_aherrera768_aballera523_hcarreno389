**Desarrollar un sistema para juegos por turnos que simule encuentros entre Ninjas y Samurais en defensa de sus territorios**

Un jugador podrá desarrollar su personaje, el cual empezará siempre en nivel 1 y podrá adquirir armaduras y/o armas, según su nivel y la cantidad de dinero que posea. Puede decidir atacar a otro jugador para obtener más nivel y dinero para mejorar a su personaje.

Los encuentros serán por turnos. El encuentro termina cuando un jugador es derrotado o cuando decide retirarse. Cada jugador puede realizar un ataque por turno, debe decidir el tipo de ataque (normal, con arma, especial). Cuando un jugador recibe un ataque se comparan sus puntos de defensa con los puntos de ataque del atacante para determinar si derrota el ataque o si sufre daño. Lo mismo cuando el jugador realiza un ataque en respuesta. Se deben registrar cada encuentro, los jugadores involucrados, el estado final de cada personaje (vitalidad), si hubo un retiro o no.

**Sobre la estructura:**
- Debe generarse un nuevo proyecto Rails que contendrá todos los servicios a ofrecer para la dinámica del juego
- El proyecto debe poseer un archivo goc.rb que se ejecute por separado (se sugiere colocarlo en la carpeta /public), este archivo contendrá la lógica de llamadas de acciones que se conectarán a los servicios de la base de datos.
- Se usarán dos cónsolas: una ejecutará el servidor Rails y otra invocará al goc.rb

**Consideraciones:**
- goc.rb debe ejecutarse por cónsola y mostrar un menú inicial con las opciones:
- - Nuevo personaje (crear un personaje nuevo según lo explicado en el enunciado)
- - Cargar personaje (que muestra un listado delos personajes registrados para seleccionar uno),
- - Salir
- Una vez escogido un personaje se procederá a ofrecer un nuevo menú con opciones:
- - buscar personaje a atacar
- - atacar nuevamente a personaje seleccionado (que dependerá del personaje atacado)
- - retirarse de batalla
- - mostrar información de personaje (muestra nombre, nivel, puntos de ataque y defensa, dinero, del personaje con que está usando el jugador)
- - volver al menú principal.
- No se puede atacar a un personaje si ya el jugador está atacando a otro y no lo ha vencido o no se ha retirado de la batalla.
- Un ataque generado a un personaje debe invocar la defensa del otro personaje y un ataque en respuesta.

**Parejas de Trabajo**
Jonathan y John
Génesis y Héctor Gámez
Angélica y Alexander
María y Samuel
Luis y Leonard
Marco y Héctor Carreño

**Sugerencias**

Se plantean los siguientes modelos

Personaje
- Nombre:string
- Tipo:string (samurai, ninja)
- Edad:integer
- Vitalidad:integer
- Puntos de vida (máx):integer
- Arma
- Armadura
- Habilidad:string
- Nivel:integer
- Puntos Defensa:integer
- Puntos Ataque:integer
- Ataques (listado de ataques, uno de cada tipo)

Arma
- Tipo:string
- Nombre:string
- Daño:integer
- Defensa:integer

Ataque
- Tipo:string
- Nombre:string
- Daño:integer
- Arma
- Personaje:string (ninja, samurai, ambos)

Armadura
- Tipo:string
- Nombre:string
- Personaje:string (ninja, samurai, ambos)
- Defensa: integer
- Daño: integer

Encuentros
- Jugador 1:integer FK
- Jugador 2:integer FK
- Vitalidad 1:integer
- Vitalidad 2:integer
- Ganador:integer FK
- Retiro:boolean

**A tomar en cuenta: **
Acciones base de un personaje:
- Ataque Normal
- Ataque con Arma
- Ataque especial
- Defensa 