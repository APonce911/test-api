CRUD API

Endpoints

#Index
  GET http://localhost:3000/api/v1/products

#Show
  GET http://localhost:3000/api/v1/products/:id

#Create
  POST http://localhost:3000/api/v1/products

  Headers
   'Content-Type: application/json'
   'X-User-Email: your@email.com'
   'X-User-Token: your-token'

  Body
    {
      "description": "product description",
      "price": integer,
      "quantity": integer
    }

#Update
  PATCH http://localhost:3000/api/v1/products/:id

  Headers
   'Content-Type: application/json'
   'X-User-Email: your@email.com'
   'X-User-Token: your-token'

  Body
    {
      "description": "product description",
      "price": integer,
      "quantity": integer
    }

#DESTROY
  DELETE http://localhost:3000/api/v1/products/:id

  Headers
   'X-User-Email: your@email.com'
   'X-User-Token: your-token'


