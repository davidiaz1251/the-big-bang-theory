# The Big Bang Theory - SwiftUI App

<p align="center">
  <img src="portada.png" alt="The Big Bang Theory" width="600">
</p>

## Descripción

Esta aplicación es un homenaje a la icónica serie **The Big Bang Theory**, desarrollada como parte del programa **Swift Developer 2024**. Utiliza SwiftUI para crear una experiencia visual e interactiva con las siguientes características principales:

- 🗂 **Explorar episodios** organizados por temporadas.
- ✅ **Marcar episodios como vistos**.
- ❤️ **Guardar episodios favoritos** y verlos en un Grid destacado.
- ⭐ **Valorar episodios** del 1 al 5 según tus preferencias.
- 📝 **Añadir notas personalizadas** a cada episodio.
- 🔍 **Búsqueda inteligente** por nombre de episodio.

---

## Estructura de Datos

Los datos se cargan desde un archivo JSON con la siguiente estructura:

```swift
struct BigBang: Codable { 
    let id: Int 
    let url: URL 
    let name: String 
    let season, number: Int 
    let airdate: String 
    let runtime: Int 
    let image: String 
    let summary: String 
}
```

⚠️ **Nota:** Los datos son de solo lectura y no se pueden editar desde la app.

---

## Características de la App

### Tabla maestra
- Navega por las temporadas y episodios fácilmente.
- Marca/desmarca episodios como **vistos** o selecciona una temporada completa.

<!--<p align="center">
  <img src="ruta-a-imagen-tabla" alt="Tabla de episodios" width="600">
</p>-->

### Episodios favoritos
- Visualiza tus episodios favoritos en un **Grid interactivo**.

<!--<p align="center">
  <img src="ruta-a-imagen-favoritos" alt="Grid de favoritos" width="600">
</p>-->

### Detalle de episodios
- Accede a la descripción, valoración y notas personalizadas de cada episodio.

<!--<p align="center">
  <img src="ruta-a-imagen-detalle" alt="Detalle del episodio" width="600">
</p>-->

---

## Requisitos

- **Xcode** 15.0 o superior.
- **Swift** 5.9.
- Compatible con iOS 17.

---

## Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/usuario/The-Big-Bang-Theory-App.git
   ```
2. Abre el proyecto en Xcode:
   ```bash
   cd The-Big-Bang-Theory-App
   open TheBigBangTheory.xcodeproj
   ```
3. Corre el proyecto en un simulador o dispositivo físico.

---

## Recursos Gráficos

Los recursos gráficos están organizados en dos carpetas:

- `episodesCovers`: Contiene las imágenes de cabecera de cada episodio.
- `showCovers`: Incluye la portada general de la serie y mini-portadas de cada temporada.

---

## Licencia

Este proyecto es solo para fines educativos y no tiene relación oficial con **The Big Bang Theory** ni con sus creadores. Todos los derechos pertenecen a sus respectivos propietarios.

<!--<p align="center">
  <img src="ruta-a-imagen-final" alt="Logo decorativo" width="300">
</p>-->

