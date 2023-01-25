import React, { useState } from "react";

function NumbersDisplay() {
  const [count, setCount] = useState(0);

  const increment = () => {
    setCount(count + 1);
  };

  const decrement = () => {
    setCount(count - 1);
  };

  const reset = () => {
    setCount(0);
  };
<div>


<div className="hello"></div>
</div>
  return (
    <div>
      <h2>Current Count: {count}</h2>
      <button onClick={increment}>+</button>
      <br />
      <button onClick={decrement}>-</button>
      <br />
      <button onClick={reset}>reset</button>
      <br />
    </div>
  );
}

export default NumbersDisplay;
