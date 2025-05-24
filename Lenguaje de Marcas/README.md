# Lenguaje de Marcadas
Ejercicios de Lenguaje de Marcado realizados para la asignatura de Desarrollo de Aplicaciones Multiplataforma en el I.E.S. Belén (Málaga).
La ​​mayoría de los ejercicios de este repositorio provienen del manual de programación del profesor. Además, se pueden consultar las notas de esta página web. El consorcio [`World Wide Web (W3C)`](https://www.w3.org/) es un consorcio internacional que genera recomendaciones y estándares.

Para empezar, es necesario contar con un sitio de desarrollo donde se pueda programar. En este caso, instalaré [`Visual Code Studios`](https://code.visualstudio.com/download).

##  📖 Estructura del Contenido
```
📁 Lenguaje de Marcas
│
├── 📁 TEMA 1 – XML Básico
│ ├── Ejercicios de XML (repaso)
│ ├── Ejercicios de XML Básico
│ ├── Ejercicios de XML Básico.pdf
│ └── Teoría XML Básico.pdf
│
├── 📁 TEMA 2 – HTML y CSS
│ ├── 📁 Actividades
│ │ ├── A201
│ │ ├── A202
│ │ ├── A203
│ │ ├── A204
│ │ ├── A205
│ │ ├── A206
│ │ ├── A207
│ │ └── A208
│ ├── 📁 Guías
│ │ ├── G01
│ │ └── G02
│ ├── A201 - HTML Básico.pdf
│ ├── A202 - HTML sin CSS.pdf
│ ├── A203 - Formatos de texto.pdf
│ ├── A204 - Listas.pdf
│ ├── A205 - Enlaces.pdf
│ ├── A206 - Imágenes.pdf
│ ├── A207 - Tablas.pdf
│ ├── G01 - Grid Básico.pdf
│ ├── G02 - Grid Maquetación.pdf
│ ├── CSS con Flexbox y Grid Layout.pdf
│ └── Manual HTML y CSS.pdf
│
├── 📁 TEMA 3 – HTML, CSS y JavaScript
│ ├── 📁 Actividades
│ │ ├── A301
│ │ ├── A302
│ │ ├── A303
│ │ ├── A304
│ │ └── A305/ejercicio01
│ ├── 📁 Recursos
│ │ └── freeCodeCamp
│ ├── A301 - Eventos.pdf
│ ├── A302 - Document Object Model (DOM).pdf
│ ├── A303 - JavaScript Completo.pdf
│ ├── A304 - JSON.pdf
│ └── A305 - JSON II.pdf
│
├── 📁 TEMA 4 – Validación DTD y XML Schema
│ ├── DTD - XML
│ ├── XML Schema - XML
│ ├── Teoría DTD.pdf
│ └── Teoría XML Schema.pdf
│
├── 📁 TEMA 5 – Transformaciones XSLT
│ ├── 📁 Actividades
│ │ ├── A501
│ │ ├── A502
│ │ ├── A503
│ │ ├── A504
│ │ └── A505
│ ├── A501 - Ficheros XML - JSON
│ ├── A502 - Ficheros XML
│ ├── A503 - Ficheros XML y JSON
│ ├── A504 - Ficheros XML
│ ├── A505 - Ficheros XML
│ ├── A501 - Introducción a XSLT.pdf
│ ├── A502 - XSLT con Repeticiones.pdf
│ ├── A503 - Repeticiones y Condiciones.pdf
│ ├── A504 - Ejercicios Combinados 1.pdf
│ ├── A505 - Ejercicios Combinados 2.pdf
│ └── Teoría XSLT Transformaciones.pdf
│
├── README.md
├── README.md (duplicado, posible revisión)
└── README_ENGLISH.md
```


## 📚 Unidades
Los temas tratados durante el curso se enumeran a continuación en cada una de las siguientes secciones.
### Unidad 1 - Conceptos básicos de XML
- **`XML`** *(Lenguaje de Marcado Extensible)* es un lenguaje de marcado diseñado para almacenar y transportar datos en un formato estructurado y legible. A diferencia de HTML, que define la apariencia y la estructura de una página web, XML se centra exclusivamente en el almacenamiento y la organización de datos, sin etiquetas predefinidas.

### Unidad 2 - Conceptos de HTML y CSS
- HTML (Lenguaje de Marcado de Hipertexto) proporciona la estructura de una página web mediante la definición de elementos como texto, imágenes, enlaces, tablas y formularios. Utiliza etiquetas para identificar las diferentes partes de una página.
- CSS (Sistema de Carga Combinado) se utiliza para controlar el diseño de una página web, incluyendo colores, fuentes, espaciado, posicionamiento, etc. Separa el contenido (HTML) del diseño (CSS).

### Unidad 3 - Conceptos Clave de Desarrollo Web: JavaScript, DOM y JSON
- **`JavaScript`** es un lenguaje de programación basado en eventos que añade interactividad a las páginas web, como la gestión de clics del ratón, animaciones, etc. Se utiliza para manipular el DOM, responder a las acciones del usuario, validar formularios, realizar peticiones al servidor, etc. Junto con HTML y CSS, constituye la base del desarrollo web.
- **`DOM`** *(Modelo de Objetos del Documento)* es una representación en forma de árbol de un documento HTML o XML. Permite a los desarrolladores manipular elementos de la página web, lo que permite que JavaScript cambie dinámicamente el contenido, la estructura y el estilo en tiempo real.
- **`JSON`** *(Notación de Objetos JavaScript)* es un formato ligero de intercambio de datos que utiliza una estructura de pares clave-valor. Es fácil de leer y escribir, y se utiliza comúnmente para almacenar y transferir datos entre servidores y aplicaciones web. JSON es independiente del lenguaje y organiza los datos mediante objetos y matrices.

### Unidad 4 - Definición y Validación de XML con DTD: Estructura, Reglas y Aplicaciones
- **`DTD`** *(Definición de Tipo de Documento)* es un conjunto de reglas que determinan la estructura y el formato que debe seguir un documento `XML`. Su propósito es garantizar que un documento `XML` sea válido, es decir, que cumpla con una estructura previamente definida.
`XML` se usa ampliamente en aplicaciones web, bases de datos y sistemas de intercambio de información debido a su capacidad para representar datos de forma legible tanto para humanos como para máquinas.

- **`Esquema XML`** *(XSD - Definición de Esquema XML)* es una alternativa más potente y flexible a `DTD` para definir la estructura y las restricciones de un documento `XML`. Permite especificar tipos de datos, relaciones entre elementos y reglas de validación con mayor precisión.
A diferencia de `DTD`, `Esquema XML` está escrito en `XML`, lo que lo hace más extensible y fácil de integrar con aplicaciones modernas. Admite espacios de nombres, tipos de datos (como números enteros, fechas y booleanos) y estructuras complejas, lo que lo hace ampliamente utilizado en servicios web, validación de datos e intercambio de información estructurada.

### Unidad 5 - Transformaciones XSLT: Conceptos, Sintaxis y Aplicaciones
- **`XSLT`** *(eXtensible Stylesheet Language Transformations)* es un lenguaje utilizado para transformar documentos `XML` a diferentes formatos, como `HTML`, texto plano o incluso otros documentos `XML`. Separa el contenido de la presentación, lo que facilita la gestión y reutilización de datos.
`XSLT` funciona aplicando un conjunto de plantillas y reglas a una fuente `XML`, utilizando `XPath` para seleccionar elementos o atributos específicos. El resultado de la transformación suele ser un nuevo documento con una estructura y apariencia adaptadas a un propósito o público específico.

## 📄 Información del proyecto
Visite la [Wiki](https://github.com/Irene-Frias/1DAM/wiki/Inicio-a-Lenguaje-de-Marcas) del proyecto para obtener más información.

## 👩‍💻 Desarrolladora
Irene Frías Ramos

## 📱 Contáctame
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/IreneFrías/)
[![Correo electrónico](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:irene15frias@gmail.com)