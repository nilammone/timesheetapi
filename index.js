const express = require("express");
const bodyParser = require("body-parser");

const app = express();
const port = process.env.PORT || 5200;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// manage test
const testRoutes = require("./src/routes/test.route");
app.use("/api/v1/test", testRoutes);

// manage task category
const TaskCateRoutes = require("./src/routes/taskcate.route");
app.use("/api/v1/taskcate", TaskCateRoutes);

// manage task name
const TaskNameRoutes = require("./src/routes/taskname.route");
app.use("/api/v1/taskname", TaskNameRoutes);

app.listen(port, () => {
  console.log(`Server is running at port ${port}`);
});
