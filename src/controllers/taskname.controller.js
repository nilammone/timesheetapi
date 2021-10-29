const TaskName = require("../models/taskname.model");

// get all task name list
exports.getTaskNameList = (req, res) => {
  TaskName.getAllTaskName((err, taskname) => {
    if (err) res.send(err);
    // console.log("Task Category: ", taskcate);
    res.send(taskname);
  });
};

exports.getTaskNameListCateId = (req, res) => {
  TaskName.getTaskNameByCateId(req.params.id, (err, taskname) => {
    if (err) {
      res.send(err);
    }
    console.log("single cate task name data", taskname);
    res.send(taskname);
  });
  //   console.log(req.params.id);
};
