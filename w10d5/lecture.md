`npm install react-router-dom@^5.3.4`

## SPA Lifecycle

- Single Page Application
  +------------+
  | |
  | SPA |
  | |
  +-+----------+
  | API calls
  |
  +-------+-------+
  | |
  | API Server |
  | |
  +---------------+

## React

- Virtual DOM (doc obj model)
  - Keeps track of every component
  - only rerenders changes
- Abstracts away lov-level FOM manipulation
- Components only rerender as needed
  - Only re-render if props have changed
  - when internal state of the component changes
  - Wnen a parent component rerenders

npx create-react-app my-app --use-npm

npx create-react-app my-app --template @appacademy/react-v17 --use-npm

# use hooks

- `useState`: A hook that allows you to add state to your functional components. It returns an array with two elements: the current state value, and a function to update the state.

* example:

```
const [count, setCount] = useState(0);
```

`useEffect:` A hook that allows you to add side effects to your functional components. It lets you synchronize a component with an external system.

```
useEffect(() => {
  document.title = `You clicked ${count} times`;
}, [count]);

```

- example of a functional component:

```
import React, { useState, useEffect } from 'react';

function MyComponent() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `Count: ${count}`;
  }, [count]);

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
    </div>
  );
}
export default MyComponent;

```

21:17

# Components in the same file:

```
import React, {useState} from 'react';

function ParentComponent() {
  // useState hook is used to create a state variable 'selectedComponent'
  // with an initial value of 'componentA'
  const [selectedComponent, setSelectedComponent] = useState('componentA');

  // return JSX which will be rendered on the page
  return (
    <div>
      // button that when clicked calls the function to set selectedComponent state to 'componentA'
      <button onClick={() => setSelectedComponent('componentA')}>Show Component A</button>
      // button that when clicked calls the function to set selectedComponent state to 'componentB'
      <button onClick={() => setSelectedComponent('componentB')}>Show Component B</button>
      // ternary operator that conditionally renders the ComponentA component if selectedComponent is 'componentA'
      {selectedComponent === 'componentA' && <ComponentA />}
      // ternary operator that conditionally renders the ComponentB component if selectedComponent is 'componentB'
      {selectedComponent === 'componentB' && <ComponentB />}
    </div>
  );
}

function ComponentA() {
  // return JSX for ComponentA
  return (
    <div>
      <h2>I am Component A</h2>
    </div>
  );
}

function ComponentB() {
  // return JSX for ComponentB
  return (
    <div>
      <h2>I am Component B</h2>
    </div>
  );
}

// export the ParentComponent so it can be imported and used in other parts of the application
export default ParentComponent;

```

## React Router

- introduxes the concept of front-end routes
- Dynamically renders different components based on the URL
- Used to mimic behavior of tradiotnal multi-page application

### Tools imported from react-router-dom

- Router
  - BroswerRouter
- Route
- Navigation

## Route example:

```
import {
  BrowserRouter as Router, // Import the Router component from the react-router-dom library
  Route, // Import the Route component
  Switch // Import the Switch component
} from 'react-router-dom'

<Router> // This component is the top-level component for client-side routing in the application
  <Switch> {/* This component is used to group a set of routes together and only render the first one that matches the current location */}
    <Route exact path='/' component={Home} /> {/* The exact prop is used to ensure that only the exact path specified in the path prop is matched. The component prop is used to specify which component should be rendered when the route is matched */}
    <Route exact path='/todos' component={TodoIndex} />
    <Route exact path='/todos/:todoId' component={TodoShow} /> {/* this route is using a parameter :todoId that will allow us to access the id of the Todo item in the TodoShow component, so we can fetch and show the details of the Todo item with that specific id */}
  </Switch>
</Router>

```

## Link component:

## useParams

- a hook
- returns object from url (wildcards)
- key in to access a value from the url
  `const { todoId } = ...`

  ## useParams

  ```
  import jobData from "../assets/jobData";
  import { useParams } fro 'react-router-dom;

  const JobShow = () => {
    const { jobId } = usePArams();

    const job = jobData[jobID];

    return (
        <div className="job-show">
    )

  }
  ```
