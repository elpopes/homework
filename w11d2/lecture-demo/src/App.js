import React, { useState } from "react";
import Time from "./components/Time";

// function newApp() {
//   const [showTime, setShowTime] = useState(true);

//   const clickHandler = (e) => {
//     e.preventDefault();

//     setShowTime((oldShowTime) => !oldShowTime);
//   };

//   return (
//     <>
//       <h1>Hello from App</h1>
//       <button onClick={clickHandler}>Toggle Time!</button>
//       {showTime && <Time />}
//     </>
//   );
// }

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      showTime: true,
    };

    this.clickHandler = this.clickHandler.bind(this);
  }

  clickHandler(e) {
    e.preventDefault();
    this.setState((oldState) => ({ showTime: !oldState.showTime }));
  }
  render() {
    return (
      <>
        <h1>hello from App!</h1>
        <button onClick={this.clickHandler}>Toggle Time!</button>
        {this.state.showTime && <Time />}
      </>
    );
  }
}

export default App;
