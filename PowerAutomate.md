# Power Automate cheatsheet
example: Conector - Action

## Sharepoint list - Get items 
OData Filter, if Column Choice (Grupo/Segmento) and Column Boolean (esEncargado)
* esEncargado:
* * true: 1
  * false: 0
```
esEncargado eq 1 and Grupo_x002f_Segmento eq 'Gestion Humana'
```

## Control - If
Column boolean "Escritorio/Silla"
```
body('get_element_Colaborador')?['Escritorio_x002f_Silla'] is equal to @{false}
```
