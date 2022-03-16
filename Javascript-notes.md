# Javascript notes


## Variables

Con `javascript` se puede inicializar variables de diversas formas:

* var
* let
* const

`let` es la nueva forma de declarar variables, no permite la redeclaración como sucede con `var`.
`const` se deben de inicializar con un valor, no permite la reasignación de variables (tipo primitivo).

## Tipos de datos

## Objetos

### Crear objetos
* Object Literal
```javascript
const producto = {
    nombre: "Monitor 27 pulgadas",
    precio: 700,
    disponible: true
}
```
* Object Constructor
```javascript
function Producto (nombre, precio) {
    this.nombre = nombre;
    this.precio = precio;
    this.disponible = true;
}

let nuevoProducto = new Producto('Monitor', '300');
```

### Agregar o eliminar propiedades de un objeto

Agregar nuevas propiedades

```javascript
producto.imagen = "imagen.jpg"
```

Eliminar propiedades

```javascript
delete producto.imagen;
```

### Destructuring
```javascript
const { nombre, precio  } = producto;
```
### Destructuring de objetos anidados
```javascript
const producto = {
    nombre: "Monitor 27 pulgadas",
    precio: 700,
    disponible: true,
    informacion: {
        medidas : {
            peso: "1kg",
            medida: "1m"
        },
        fabricacion: {
            pais: "China"
        }
    }
}

const { nombre, informacion: { fabricacion } } = producto;
console.log(nombre);    // Monitor 27 pulgadas
console.log(fabricacion);    // { pais: "China" }
```

### Congelar propiedades de un objeto
```javascript
"use strict"
Object.freeze(producto);
console.log(Object.isFrozen(producto));
Object.seal(producto);
console.log(Object.isSealed(producto));
```
El método `freeze` congela un objeto, en el cual no se puede agregar, modificar ni eliminar sus propiedades. Caso contrario que pasa con el método `seal` que solo permite modificar sus propiedades más no eliminar ni agregar.

### Unir 2 objetos
```javascript
const resultado = Object.assing(producto, medidas);
// Spread operator
const resultado2 = {...producto, ...medidas};
```

### Métodos de Objetos
**Object Keys**
Retorna un arreglo con las keys del objeto
```javascript
console.log(Object.keys(producto));
// ["nombre", "precio", "disponible"]
```

**Object Values**
Retorna un arreglo con los valores del objeto
```javascript
console.log(Object.values(producto));
// ["Monitor 20 pulg", "100", "true"]
```

**Object Entries**
Retorna un arreglo de *keys* y *values* dentro de un arreglo
```javascript
console.log(Object.values(producto));
// [["nombre", "Monitor 20 pulg"], ["precio", "100"], ["disponible", "true"]]
```

## Arreglos
### Copia de un arreglo con el Spread Operator
```javascript
const arreglo2 = [...arreglo1];
```

### Destructuring de Arreglos
```javascript
const numeros = [10, 20, 30, 40, 50];
const [primero] = numeros; // 10
const [primero, , tercero] = numeros; // 10, 20
const [primero, segundo, ...tercero] = numeros; // 10, 20, [30, 40, 50]
```

### Iterando Arreglos
#### forEach
```javascript
carrito.forEach(function (producto){
    console.log(`${producto.nombre} - Precio: ${producto.nombre}`);
});
```
#### map
Mapea cada elemento
Crea un nuevo arreglo
```javascript
const nuevoArreglo = carrito.map(function (producto){
    return `${producto.nombre} - Precio: ${producto.nombre}`;
});
```

## Funciones

### Parámetros predeterminados alternativos
```javascript
function showMessage(text) {
    // si text es indefinida o falsa, la establece a 'vacío'
    text = text || 'vacío';
}
// Usando un operador signo de pregunta '?':
function checkAge(age) {
  return (age > 18) ? true : confirm('¿Tus padres te lo permitieron?');
}
// Usando Ó || (la variante más corta):
function checkAge(age) {
  return (age > 18) || confirm('¿Tus padres te lo permitieron?');
}
```


### Añadir funciones en un Objeto

```javascript
const reproductor = {
    reproducir: function(id){
        console.log(`Reproduciendo la canción con id: ${id}`);
    },
    pausar: function(id){
        console.log('pausando...');
    },
    borrar: function(id){
        console.log(`Borrando canción con id: ${id}`);
    }
}
```

### Arrow Functions

#### Arrow functions en un objeto
```javascript
const reproductor = {
    reproducir: id => console.log(`Reproduciendo la canción con id: ${id}`),
    pausar: id => console.log('pausando...'),
    borrar: id => console.log(`Borrando canción con id: ${id}`),
    set nuevaCancion(cancion) {
        this.cancion = cancion;
        console.log(`Añadiendo ${this.cancion}`)
    },
    get obtenerCancion() {
        console.log(`${this.cancion}`)
    }
}

reproductor.nuevaCancion = 'Enter Linkin Park';
reproductor.obtenerCancion;
```

### Iteradores

#### forEach
Itera sobre arrays
```javascript
const pendientes = ['Tarea', 'Comer', 'Estudiar', 'Jugar'];
pendientes.forEach( (pendiente, indice) => {
    console.log(`${indice} - ${pendiente}`);
});

const carrito = [
    { nombre: 'Monitor 24pulg', precio: 500 },
    { nombre: 'Mouse', precio: 100 },
    { nombre: 'Teclado', precio: 200}
]

carrito.forEach( producto => console.log(`${producto.nombre}`));
```

#### map
Crea un nuevo array
```javascript
const carrito = [
    { nombre: 'Monitor 24pulg', precio: 500 },
    { nombre: 'Mouse', precio: 100 },
    { nombre: 'Teclado', precio: 200}
]

const nuevoArreglo = carrito.map( producto => producto.nombre);

```

#### for ... of
Itera sobre cada elemento de un array
```javascript
const carrito = [
    { nombre: 'Monitor 24pulg', precio: 500 },
    { nombre: 'Mouse', precio: 100 },
    { nombre: 'Teclado', precio: 200}
]

for (let producto of carrito){
    console.log(producto);
}
```

#### for ... in
Itera sobre cada propiedad de un objeto
```javascript
const automovil = {
    modelo: 'Mazda',
    year: 1990,
    motor: '6.0'
}

for (let propiedad in carrito){
    console.log(`${automovil[propiedad]}`);
}

for (let [llave, valor] of Object.entries(automovil)){
    console.log(llave);
    console.log(valor);
}
```


### Array methods
```javascript
const meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'];
const carrito = [
    {nombre: 'Monitor', precio: 500},
    {nombre: 'Mouse', precio: 100},
    {nombre: 'Teclado', precio: 150},
    {nombre: 'Video', precio: 900},
    {nombre: 'Procesador', precio: 1000},
];
```

### find

Retorna el primer elemento que cumpla una condición, caso contrario retorna **undefined**.
```javascript
const resultado = carrito.filter( producto => producto.precio < 600 );
```

### findIndex

Devuelve el indice del elemento, caso contrario retorna -1.
```javascript
const indice = carrito.findIndex( producto => producto.precio === 100 );
const indice2 = meses.some( mes => mes === 'Febrero' );
```

### Reduce

Reduce los elementos de un array, siendo **total** el valor sobre el que se acumula, **producto** el elemento iterado, y **0** el valor inicial de **total**.
No modifica el array original.
```javascript
const total = carrito.some( (total, producto) => total + producto.precio, 0);
```

### Filter

Aplica un filtro/condición sobre cada elemento.
Crea un nuevo array.
```javascript
const resultado = carrito.filter( producto => producto.precio < 600 );
```

### Every

Devuelve **true** si todos los elementos deben cumplir una condición, caso contrario retorna **false**.
```javascript
const resultado = carrito.every( producto => producto.precio < 600 );
```

### Some

Devuelve **true** si al menos elemento cumple una condición, caso contrario retorna **falso**.
```javascript
const existe = carrito.some( producto => producto.nombre === 'Monitor');
const existe2 = meses.some( mes => mes === 'Febrero' );
```

### Otros métodos

#### Concatenar 2 arrays

* concat
```javascript
const meses1 = ['Enero', 'Febrero', 'Marzo'];
const meses2 = ['Abril', 'Mayo', 'Junio'];
const meses3 = ['Julio', 'Agosto', 'Septiembre'];
const resultado = meses1.concat(meses2, meses3);
```

#### Spread operator
* Concatenación
```javascript
const meses1 = ['Enero', 'Febrero', 'Marzo'];
const meses2 = ['Abril', 'Mayo', 'Junio'];
const meses3 = ['Julio', 'Agosto', 'Septiembre'];
const resultado = [...meses1, ...meses2, ...meses3];

const producto = { nombre: 'Disco Duro', precio: 140 };
const carrito2 = [...carrito, producto];
```


## DOM
* Es un árbol de nodos.

```javascript
let elemento;
elemento = document;
elemento = document.all;
elemento = document.head;
elemento = document.body;
elemento = document.domain; // url
elemento = document.forms;  // obtiene todos los formularios - HTMLCollection
elemento = document.forms[0]; // primer formulario - Elemento HTML
elemento = document.forms[0].id;    // id del formulario
elemento = document.forms[0].method;    // método del formulario
elemento = document.forms[0].classList; // lista de clases del elemento - DOMTokenList
elemento = document.forms[0].className; // lista de clases del elemento - String
```
### Selectores

Resumen de selectores

| Methods | Elements | Return data type | Recommend |
|---|---|---|---|
| querySelector | 1  | HTMLElement / null | Yes |
| querySelectorAll | many  | NodeList / [] | Yes |
| getElementById | 1  | HTMLElement / null | Yes |
| getElementsByTagName | many  | HTMLCollection | No |
| getElementsByClassName | many  | HTMLCollection | No |

### Modificando contenido HTML

```javascript
const encabezado = document.querySelector('.contenido');
console.log(encabezado.innerText);  // trae el string formateado
console.log(encabezado.textContent);    // trae el string sin formato
console.log(encabezado.innerHTML);  // trae con contenido html

const imagen = document.querySelector(".card img");
imagen.src = 'imagen2.jpg';
```

### Modificando CSS por JS
```javascript
const card1 = document.querySelector('h1');
card1.style.backgroundColor = 'red';    // modificando clases
card1.style.fontFamily = 'Arial';       // modificando clases

const card2 = document.querySelector('.card');
card2.classList.add('nueva-clase', 'segunda-clase'); // añadir clases
card2.classList.remove('card');  // remover clases
```

### Navegando a través del DOM
Para iniciar en esto, debemos saber que existen el DOM es un árbol de nodos, todo lo que se renderiza en el navegador es un nodo, sea texto, comentario, espacios, saltos de lineas, etc.

Existen [12 tipos de nodos](https://dom.spec.whatwg.org/#node), pero 4 son los más importantes:

1. document – el “punto de entrada” en el DOM.
2. nodos de elementos – Etiquetas-HTML, los bloques de construcción del árbol.
3. nodos de texto – contienen texto.
4. comentarios – a veces podemos colocar información allí, no se mostrará, pero JS puede leerla desde el DOM.

```javascript
// Navegación a través de los nodos.
const card1 = document.querySelector(".card");
console.log(card1.childNodes);    // lista de hijos - NodeList
console.log(card1.firstChild);   // primer hijo - Node
console.log(card1.lastChild);    // ultimo hijo - Node
console.log(card1.previousSibling);  // anterior hermano - Node
console.log(card1.nextSibling);      // siguiente hermano - Node
console.log(card1.parentNode);           // padre - Node

// Navegación a través de los nodos.
const card2 = document.querySelector(".card");
console.log(card2.children);    // lista de hijos - HTMLCollection
console.log(card2.firstElementChild);   // primer hijo - HTMLElement
console.log(card2.lastElementChild);    // ultimo hijo - HTMLElement
console.log(card2.previousElementSibling);  // anterior hermano - HTMLElement
console.log(card2.nextElementSibling);      // siguiente hermano - HTMLElement
console.log(card2.parentElement);           // padre - HTMLElement
```

### Eliminando elementos
```javascript
// Eliminando por si mismo
const card1 = document.querySelector(".card");
card1.remove();

// Eliminando a través del padre
const padre = document.querySelector(".padre");
padre.removeChild(padre.children[3]);
```

### Creando e insertando elementos
Existen varias formas de agregar elementos:
* **insertAdjacentHTML**
* La antigua forma, usando: **appendChild** **insertBefore**
```javascript
// 1. Crear elemento <div>
let div = document.createElement('div');

// 2. Establecer su clase a "alert"
div.className = "alert";

// 3. Agregar el contenido
div.innerHTML = "<strong>¡Hola!</strong> Usted ha leído un importante mensaje.";

// 4. elemento.insertAdjacentHTML(where, html) 
/*    
    "beforebegin" – inserta html inmediatamente antes de elem
    "afterbegin" – inserta html en elem, al principio
    "beforeend" – inserta html en elem, al final
    "afterend" – inserta html inmediatamente después de elem
*/
div.insertAdjacentHTML('beforebegin', '<p>Hola</p>');
div.insertAdjacentHTML('afterend', '<p>Adiós</p>');


// La antigua forma
const parrafo = document.createElement("P");
parrafo.textContent = 'Soy un parrafo';
parrafo.classList.add('clase1', 'clase2');
const info = document.createElement("DIV");
info.appendChild(parrafo);
```

