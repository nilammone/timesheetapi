const express = require("express");

const router = express.Router();

const TaskCateController = require("../controllers/taskcate.controller");

// get all task category
router.get("/", TaskCateController.getTaskCateList);

module.exports = router;
