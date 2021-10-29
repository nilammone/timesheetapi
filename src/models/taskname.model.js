var dbConn = require("../../config/db.config");

// *** get task category
var TaskName = function (taskname) {
  this.n_en_name = taskname.n_en_name;
  this.n_la_name = taskname.n_la_name;
  this.task_category_id = taskname.task_category_id;
  this.n_create_at = taskname.n_create_at;
};

// get all task category
TaskName.getAllTaskName = (result) => {
  dbConn.query("select *from task_name", (err, res) => {
    if (err) {
      console.log("Error while fetching Taks Name", err);
      result(null, err);
    } else {
      console.log("Task Name fetched successfully");
      result(null, res);
    }
  });
};

TaskName.getTaskNameByCateId = (id, result) => {
  dbConn.query(
    "select *from task_name where task_category_id=?",
    id,
    (err, res) => {
      if (err) {
        console.log("Error while fetching task name by id" + id);
        result(null, err);
      } else {
        console.log(id);
        result(null, res);
      }
    }
  );
  // console.log(id);
};

module.exports = TaskName;
