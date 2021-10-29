var dbConn = require("../../config/db.config");

// *** get task category
var TaskCategory = function (taskcategory) {
  this.cat_en_name = taskcategory.cat_en_name;
  this.cat_la_name = taskcategory.cat_la_name;
  this.cat_number = taskcategory.cat_number;
  this.cat_create_at = taskcategory.cat_create_at;
};

// get all task category
TaskCategory.getAllTaskCate = (result) => {
  dbConn.query("select *from task_category", (err, res) => {
    if (err) {
      console.log("Error while fetching Taks Category", err);
      result(null, err);
    } else {
      console.log("Task Category fetched successfully");
      result(null, res);
    }
  });
};

module.exports = TaskCategory;
