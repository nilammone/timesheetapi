const TaskCateModel = require("../models/taskcate.model");

// get all task category list
exports.getTaskCateList = (req, res) => {
  TaskCateModel.getAllTaskCate((err, taskcate) => {
    if (err) res.send(err);
    // console.log("Task Category: ", taskcate);
    res.send(taskcate);
  });
};
