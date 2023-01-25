import React, { useState, useEffect } from "react";

// function Time(props) {
//   const [timeData, setTimeData] = useState({});

//   useEffect(() => {
//     const getTime = async () => {
//       try {
//         let res = await fetch("http://worldtimeapi.org/api/ip");

//         if (res.ok) {
//           let data = await res.json();
//           setTimeData(data);
//         } else {
//           throw res;
//         }
//       } catch {
//         console.log("something went wrong with network");
//       }
//     };

//     const timeRequest = setInterval(getTime, 1000);

//     console.log("time has started");

//     return () => {
//       clearInterval(timeRequest);
//       console.log("time has unmounted");
//     };
//   }, []);

//   return <p>It is currently: {timeData.datetime}</p>;
// }

class Time extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      timeData: {},
    };
  }

  componentDidMount(props) {
    console.log("Time component just mounted");

    const getTime = async () => {
      try {
        let res = await fetch("http://worldtimeapi.org/api/ip");

        if (res.ok) {
          let data = await res.json();
          this.setState({ timeData: data });
        } else {
          throw res;
        }
      } catch {
        console.log("something went wrong with network");
      }
    };

    this.timeRequest = setInterval(getTime, 1000);
  }

  componentDidUpdate(prevProps, prevState) {
    console.log("Time has update");

    if (
      prevState.timeData.day_of_week &&
      this.state.timeData.day_of_week !== prevState.timeData.day_of_week
    ) {
      console.log("Day has changed");
    }
  }

  componentWillUnmount() {
    clearInterval(this.timeRequest);
    console.log("Time has left DOM");
  }

  render() {
    return <p>It is currently: {this.state.timeData.datetime}</p>;
  }
}
export default Time;
