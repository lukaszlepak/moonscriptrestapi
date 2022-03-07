# moonscriptrestapi
Moonscript lapis rest api

Rest api to manage products and categories 

Lapis, moonscript and openresty is required to run.

Postgres SQL instance is required. User and password can be set in config.moon. 
```
docker pull postgres
docker run --name lapisteste -e POSTGRES_USER=lapisteste -e POSTGRES_PASSWORD=lapisteste postgres
```
To keep changes to code and config run:
```
moonc *.moon
```
For the first time it s neccessery to run migration:
```
lapis migrate
```
To run application type: 
```
lapis server
```
List of endpoints:

### Categories

"- GET /api/categories"

"- POST /api/categories/new -json params- name: String, description: String"

"- GET /api/categories/[id]"

"- PUT /api/categories/[id] -json params- name: String, description: String"

"- DELETE /api/categories/[id]"

### Products

"- GET /api/categories/[category_id]/products"

"- POST /api/categories/[category_id]/products/new -json params- name: String, description: String, price: Double, amount: Integer"

"- GET /api/categories/[category_id]/products/[product_id]"

"- PUT /api/categories/[category_id]/products/[product_id] -json params- name: String, description: String, price: Double, amount: Integer"

"- DELETE /api/categories/[category_id]/products/[product_id]"
