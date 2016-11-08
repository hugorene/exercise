# Exercise Project


## Estructura

EL proyecto se encuentra estructurado de la siguiente manera:

- Model. lugar donde se define DTOs, se utilizarán para realizar el mapper utilizando ObjectMapper.
- View. lugar donde se definen elementos relacionados con UI, así como storyboards y CustomTableViewCells.
- Controller. lugar donde se definen los controllers de Cocoa
- Handler. Facade que sirve para interactuar con Services, a futuro con base de datos, tracking, etc
- Service. lugar donde se realiza la comunicación con los end-points utilizando Alamofire.
- Util. elementos complementarios, variables globales, etc

## Third-party. 

- Alamofire. se utiliza para la comunicación con los end-points.
- ObjectMapper. se utiliza para el mapeo de json a objetos.


## Tests. 

- Unit testing. se realizó tres tests básicos de consumo del servicio.
- UI test. se realizó un test básico de navegabilidad y búsqueda de un item.
