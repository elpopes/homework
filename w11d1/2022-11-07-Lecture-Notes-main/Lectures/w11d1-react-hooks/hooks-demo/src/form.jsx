import React, { useState, useRef } from "react";

function Form(props) {
  const passwordInput = useRef();

  const [user, setUser] = useState({
    firstName: "",
    lastName: "",
    email: "",
    password: "",
  });

  const [errors, setErrors] = useState([]);

  const validate = () => {
    let errors = [];

    if (user.firstName.length === 0) {
      errors.push("firstname can't be blank");
    }
    if (user.password.length < 6) {
      errors.push("password must by 6 chars");
    }

    return errors;
  };

  const handleChange = (field) => {
    return (e) => {
      console.log(e);
      const newObj = Object.assign({}, user, { [field]: e.target.value });
      setUser(newObj);
    };
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    let errors = validate();

    console.log(user);

    if (errors.length) {
      setErrors(errors);
    }
  };

  const showErrors = () => {
    if (!errors.length) return null;

    return (
      <ul>
        {errors.mao((error) => (
          <li key={i}>{error}</li>
        ))}
      </ul>
    );
  };

  return (
    <div>
      {showErrors()}

      <form onSubmit={handleSubmit} className="form">
        <h2>Sign Up</h2>
        <input type="text" />
      </form>
    </div>
  );

  <input type="text" placeholder="First Name" value={user.firstName} />;
}

export default Form;
