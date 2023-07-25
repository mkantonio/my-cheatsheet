# Fetch

## Parámetros query

```javascript
// https://jsonplaceholder.typicode.com/posts?userId=1&_limit=3
let url = new URL("https://jsonplaceholder.typicode.com/posts");
let parametros = {
    userId: 1,
    _limit: 3
};

Object.keys(parametros).forEach(paramKey => {
    url.searchParams.append(
        paramKey,
        parametros[paramKey]
    )
});

fetch(url)
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.log(error));
```

## Parámetros en el cuerpo



```javascript
let url = "https://jsonplaceholder.typicode.com/posts";
let parametros = {
    title: "foo",
    body: "bar",
    userId: 1
};

fetch(url, {
        method: "POST",
        body: JSON.stringify(postParams),
    	headers: {
            "Content-Type": "application/json; charset=UTF-8"           
        }
    })
    .then(response => response.json())
    .then((data) => console.log(data))
    .catch((error) => console.log(error));
```



## Subida de archivos

Revisar si está habilitado el cors en el servidor

```html
<form action="localhost:8000/files" id="form" method="post" enctype="multipart/form-data">
    <input type="file" name="avatar" id="avatar">
    <input type="submit" value="Enviar">    
</form>
```



```javascript
document.querySelector("#form").addEventListener("submit", (event) => {
    event.preventDefault();
    let formData = new FormData();
    let file = document.querySelector("#avatar").files[0];
    let url = "http://localhost:8000/files";
    fetch(url, {
       method: "POST",
        body: formData
    })
        .then((data) => alert(data))
        .catch((error) => console.log(error));
    
    return false;
});
    

```

### CORS

Cross-Origin Resource Sharing

Anuncia a una aplicación de un origen distinto, usando HTTP headers de los recursos a los que tiene acceso.

1. Si puede acceder a los recursos

2. Bajo que condiciones puede acceder a los recursos

**Qué es un origen distinto**

Un dominio, subdominio, puerto o protocolo distinto

Se clasifican en 2 grupos:

1. Peticiones simples
   * Si usa cualquiera de estos permitidos:
     * GET / HEAD / POST
     * Encabezados limitados
     * Content-Type limitados
     * ![image](https://github.com/mkantonio/my-cheatsheet/assets/39425186/6a495ce5-839c-43fb-a273-d542cc1a0839)

3. Peticiones preflight

**Peticiones de origenes distintos**

