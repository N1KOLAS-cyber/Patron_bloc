# Contador Interactivo con Flutter y BLoC




## Descripción
Este proyecto es un ejemplo de cómo implementar el patrón **BLoC** en Flutter para manejar estados de manera eficiente y reactiva. La aplicación consiste en un **contador interactivo** que permite:

- Incrementar y decrementar el valor del contador.
- Reiniciar el contador y el texto mostrado.
- Cambiar el texto dinámicamente mediante un `TextField`.
- Actualizar colores de la interfaz según el valor del contador.

Se utiliza la dependencia **Equatable** para garantizar comparaciones eficientes de estados y asegurar que la interfaz solo se reconstruya cuando los valores cambian, evitando renderizados innecesarios.


## Funcionalidades
1. **Eventos principales:**
   - `CounterIncremented` → Incrementa el contador.
   - `CounterDecremented` → Decrementa el contador.
   - `CounterReset` → Reinicia el contador y el texto.
   - `CounterTextChanged` → Actualiza el texto en pantalla.

2. **Estados:**
   - `value` → Número actual del contador.
   - `color` → Color dinámico según el valor del contador.
   - `text` → Texto editable en pantalla.

3. **Interfaz visual:**
   - Botones para incrementar, decrementar y reiniciar.
   - Campo de texto (`TextField`) editable por el usuario.
   - Texto en pantalla que se actualiza según los estados.

---

## Tecnologías
- Flutter
- Dart
- flutter_bloc
- Equatable

---

## Estructura del proyecto
lib/
├── counter/
│ ├── counter_bloc.dart # Lógica de negocios y manejo de eventos/estados
│ ├── counter_event.dart # Definición de eventos (incrementar, decrementar, resetear, cambiar texto)
│ ├── counter_state.dart # Definición de estados (valor del contador, color, texto)
│ └── counter_page.dart # Interfaz de usuario y Widgets
├── main.dart # Punto de entrada de la aplicación



Detalles de implementación

Equatable: Usado en CounterState para comparar estados de forma eficiente. Evita que Flutter reconstruya widgets innecesariamente si los valores no cambian.

TextField: Permite al usuario escribir texto que se muestra dinámicamente en pantalla. Cada cambio se dispara como un evento CounterTextChanged.

BLoC: Separa la lógica de la interfaz, manteniendo el código más organizado y escalable. Todos los eventos son gestionados por CounterBloc.

Durante la implementación, enfrentamos problemas típicos de Flutter como importaciones ambiguas, errores de tipo y errores de null-safety. Aprender a interpretarlos fue crucial para poder implementar correctamente el BLoC y garantizar la actualización correcta de la UI.

Autor

Nicolás Gamboa
Estudiante de Ingeniería de Software
