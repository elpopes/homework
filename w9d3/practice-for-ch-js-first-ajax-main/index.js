console.log("Hello from the console!");

fetch(
  "https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b"
)
  .then((response) => {
    if (!response.ok) {
      throw new Error(response);
    }
    return response.json();
  })
  .then(
    (data) => {
      var temperatureInKelvin = data.main.temp;
      var cloudCoverage = data.clouds.all;
      var windSpeed = data.wind.speed;
      var visibility = data.visibility;
      var city = data.name;

      //Convert temperature from Kelvin to Celsius
      var temperatureInCelsius = (temperatureInKelvin - 273.15).toFixed(1);

      $("#temperature").text("Temperature: " + temperatureInCelsius + "°C");
      $("#cloud-coverage").text("Cloud coverage: " + cloudCoverage + "%");
      $("#wind-speed").text("Wind speed: " + windSpeed + "m/s");
      $("#visibility").text("Visibility: " + visibility + "m");
      $("#city").text(city);
    },
    (error) => {
      console.log("Failure!", error);
    }
  );

console.log("The AJAX request has been dispatched.");
