# Graphql
### start
run command: `docker-compose up -d --build`

go to `http://0.0.0.0:5000/graphiql` for a gui

### retrieve the data
use the following query to retrieve some data
```
query {
  allParents {
    nodes {
      id
      name
      description
      childrenByParentTableId {
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

alternative using a fragment:

```
query {
   allParents {
     nodes {
       id
      name
      description
      childrenByParentTableId {
        nodes {
         ...information
        }
      }
    }
  }
}

fragment information on Child {
  name
  id
  description
}
```

### insert data
use the following query to insert some data
```
 mutation {
   createParent(
     input: {
       parent: {
         name: "Django"
         description: "Exciting new Django"
       }
     }
   ) {
     parent {
       id
       name
       description
     }
   }
 }
```

```
 mutation {
   createChild(
     input: {
       child: {
         name: "Butch"
         description: "Exciting new Butch"
         parentTableId: 3
       }
     }
   ) {
     child {
       id
       name
       description
       parentTableId
     }
   }
 }
```

### view schema

```
{
  __schema {
    types {
      name
    }
  }
}
```


