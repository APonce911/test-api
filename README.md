<h1>CRUD API</h1>

<h2>Endpoints</h2>

<h3>#Create</h3>
  <p>POST http://localhost:3000/api/v1/products</p>

  <h4>Headers</h4>

  <p> 'Content-Type: application/json'</p>
  <p> 'X-User-Email: your@email.com'</p>
  <p> 'X-User-Token: your-token'</p>

  <h4>Body</h4>
  <p>
    {
      "description": "product description",
      "price": integer,
      "quantity": integer
    }
  </p>

<h3>#Index</h3>
  <p>GET http://localhost:3000/api/v1/products</p>

<h3>#Show</h3>
  <p>GET http://localhost:3000/api/v1/products/:id</p>

<h3>#Update</h3>
  <p>PATCH http://localhost:3000/api/v1/products/:id</p>

  <h4>Headers</h4>

  <p> 'Content-Type: application/json'</p>
  <p> 'X-User-Email: your@email.com'</p>
  <p> 'X-User-Token: your-token'</p>

  <h4>Body</h4>
  <p>
    {
      "description": "product description",
      "price": integer,
      "quantity": integer
    }
  </p>

<h3>#Destroy</h3>
  <p>DELETE http://localhost:3000/api/v1/products/:id</p>

  <h4>Headers</h4>

  <p> 'X-User-Email: your@email.com'</p>
  <p> 'X-User-Token: your-token'</p>

