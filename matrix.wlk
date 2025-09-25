object nave {
    const pasajeros = []
    // consulta
    method pasajeros() = pasajeros
    method pasajeroConMayorVitalidad() = pasajeros.max({x=>x.vitalidad()})
    method tieneLaVitalidadEquilibrada() = self.pasajeroConMasVitalidad() <= self.pasajeroConMenosVitalidad()
    method pasajeroConMasVitalidad() = pasajeros.max({x=>x.vitalidad()})
    method pasajeroConMenosVitalidad() = pasajeros.min({x=>x.vitalidad()})
    method elElegidoEstaEnLaNave() = pasajeros.any({x=>x.esElElegido()})
    method todosLosQueNoSonElElegido() = pasajeros.filter({x=>!x.esElElegido()})
    // indicaccion
    method agregarPasagero(unPasajero) {pasajeros.add(unPasajero)}
    method quitarPasajero(unPasajero) {pasajeros.remove(unPasajero)}
    method chocar() {
        self.todosSaltan()
        self.quitarATodosLosPasajeros()
    }
    method todosSaltan() {pasajeros.forEach({x=>x.saltar()})}
    method todosMenosElElegidoSaltan() {self.todosLosQueNoSonElElegido().forEach({x=>x.saltar()})}
    method quitarATodosLosPasajeros() {pasajeros.clear()}
    method acelerar() {self.todosMenosElElegidoSaltan()}
}

object neo {
    var energia = 100

    method esElElegido() = true
    method vitalidad() = energia / 10
    method energia() = energia 

    method saltar() {energia = energia / 2}
}

object morfeo {
    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false
    method vitalidad() = vitalidad
    method estaCansado() = estaCansado

    method descansar() {estaCansado = false}
    method saltar() {
        estaCansado = true
        vitalidad -= 1
    }
}

object trinity {
    method vitalidad() = 0
    method esElElegido() = false

    method saltar() {}
}