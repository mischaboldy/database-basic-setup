# Graphql
### start
run command: `docker-compose up -d --build`

go to `http://0.0.0.0:5000/graphiql` for a gui

### insert data
use the following query to insert some data
```
mutation {
  createParentTable(
    input: {
      parentTable: {
        name: "Parent name 4"
        description: "Parent description 4"
      }
    }
  ) {
    parentTable {
      id
      name
      description
    }
  }
}
```


### retrieve the data
use the following query to retrieve some data
```
query {
  allParentTables {
    nodes {
      id
      name
      description
      childTablesByParentTableId {
        nodes {
          id
          name
          description
        }
      }
    }
  }
}
```