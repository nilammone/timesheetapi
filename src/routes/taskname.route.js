const express = require("express");

const router = express.Router();

const TaskNameController = require("../controllers/taskname.controller");

// get all task name
router.get("/", TaskNameController.getTaskNameList);

// get task name by ID
router.get("/cateid/:id", TaskNameController.getTaskNameListCateId);

module.exports = router;
