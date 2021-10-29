const TestModel = require("../models/test.model");

// get all test list
exports.getTestList = (req, res) => {
  TestModel.getAllTests((err, tests) => {
    if (err) res.send(err);
    console.log("Tests", tests);
    res.send(tests);
  });
};

// // get all employee list
// exports.getEmloyeeList = (req, res) => {
//     //console.log(‘here all employees list’);
//     EmployeeModel.getAllEmployees((err, employees) => {
//     console.log(‘We are here’);
//     if(err)
//     res.send(err);
//     console.log(‘Employees’, employees);
//     res.send(employees);
// })
// }

// // get employee by ID
// exports.getEmployeeByID = (req, res) => {
//     //console.log(‘get emp by id’);
//     EmployeeModel.getEmployeeByID(req.param.id, (err, employee)=>{
//     if(err){
//     res.send(err);
//     console.log(‘single employee data’, employee);
//     res.send(employee);
// }
// })
// }

// // create new employee
// exports.createNewEmployee = (req, res) => {
//     Const employeeReqData = new Employee(req.body);
//     console.log(‘employeeReqData’, employeeReqData);
//     //check null
//     if(req.body.contructor === object && object.keys(req.body).length === 0){
//     res.send(400).send({success: false, message: ‘Please fill all fields’});
// }else{
//     EmployeeModel.createEmployee(employeeReqData, (err, employee)=>{
//     if(err)
//   res.send(err);
//   res.json({status: true, message: ‘Employee Create Successfully’, data: employee})
// })
// }
// }

// // update employee
// exports.updateEmployee = (req, res)=>{
//     Const employeeReqData = new Employee(req.body);
//     console.log(‘employeeReqData update’, employeeReqData);
//     //check null
//     if(req.body.contructor === object && object.keys(req.body).length === 0){
//     res.send(400).send({success: false, message: ‘Please fill all fields’});
// }else{
//     EmployeeModel.updateEmployee(req.params.id, employeeReqData, (err, employee)=>{
//     if(err)
//   res.send(err);
//   res.json({status: true, message: ‘Employee Updated Successfully’, data: employee})
// })
// }
// }

// // delete employee
// export.deleteEmployee = (req, res)=>{
//     EmployeeModel,deleteEmployee(req.param.id, (err, employee)=> {
//     if(err)
//     res.send(err);
// res.json({success: true, message: ‘Employee deleted successfully!’});
// })
// }
