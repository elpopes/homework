import JobIndex from "./components/JobIndex";
import { Route, Switch, Redirect } from 'react-router-dom';
import JobShow from "./components/JobShow";
import Error from "./components/Error";

function App(props) {
  return (
    <div className='app'>
      <h1>Hello from App, {props.name}</h1>
      <JobIndex />
      <Switch>
        <Route path="/error">
          <Error />
        </Route>
        <Route path="/jobs/:jobId" component={JobShow} />
        <Redirect to="/error" />
      </Switch>
    </div>
  );
}

export default App;
