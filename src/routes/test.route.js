// // get employee by ID
// router.get(‘/:id’, employeeController.getEmployeeByID);

// // create new employee
// router.post(‘/’, employeeController.createNewEmployee);

// //update employee
// router.put(‘/:id’, employeeController.updateEmployee);

// // delete employee
// router.delete(‘/:id’, employeeController.deleteEmployee);

// Module.exports = router;

// ----- add new

const express = require("express");

const router = express.Router();

const TestController = require("../controllers/test.controller");

// get all test
router.get("/", TestController.getTestList);

module.exports = router;
