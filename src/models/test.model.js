var dbConn = require("../../config/db.config");

// Var Employee = function(employee){
// This.first_name = employee.first.name;
// This.last_name = employee.last.name;
// This.email = employee.email;
// This.phone = employee.phone;
// This.organization = employee.organization;
// This.designation = employee.designation;
// This.salary = employee.salary;
// This.status = employee.status ? employee.status : 1 ;
// This.created_at = new Date();
// This.update_at = new Date();
// }

var Test = function (test) {
  this.name = test.name;
};

// get all tests
Test.getAllTests = (result) => {
  dbConn.query("select *from testing", (err, res) => {
    if (err) {
      console.log("Error while fetching tests", err);
      result(null, err);
    } else {
      console.log("Tests fetched successfully");
      result(null, res);
    }
  });
};

module.exports = Test;

// // get all employees
// Employee.getAllEmloyees = (result) => {
//     dbConn.query(‘SELECT * FROM employees’, (err, res)=>{
//         if(err) {
//             console.log(‘Error while fetching employees’, err);
//             result(null,err);
// }else{
//     console.log(‘Employees fetched successfully’);
//     result(null,res);
// }
// })
// }

// // get employee by ID from DB;
// Employee.getEmployeeByID = (id, result) =>{
//     dbConn.query(‘SELECT * FROM employees WHERE id=?’, id, (err, res)=>{
//     if(err){
//     console.log(‘Error while fetching employee by id’);
//     result(null, err);
//     }else{
//         result(null, res);
// }
// })
// }

// // Create new employee
// Employee.createEmployee = (employeeReqData, result) => {
// dbConn.query(‘INSERT INTO employees SET ? ’, employeeReqData, (err, res) => {
// if(err){
//     console.log(‘Error while inserting data’);
//     result(null, err);
// }else{
//     console.log(‘Employee created successfully’);
//     result(null, res);
// }
// })
// }

// // update employee
// Employee.updateEmployee = (id, employeeReqData, result)=>{
//     dbConn.query(“UPDATE employees SET first_name=?, last_name=?, email=?, phone=?, organization=?, designation=?, salary=?, status=? WHERE id = ?”, [employeeReqData.first_name, employeeReqData.last_name, employeeReqData.email, employeeReqData.phone, employeeReqData.organization, employeeReqData.disignation, employeeReqdata.salary, employeeReqData.status, id], (err, res)=>{
//     console.log(‘Error while updating the employee’);
//     result(null, err);
// }else{
// console.log(“Employee updated successfully”);
// result(null, res);
// }
// })
// }

// //delete employee
// Employee.deleteEmployee = (id, result) => {
//     dbConn.query(‘DELETE FROM employees WHERE id =?’, [id], (err, res)=> {
//         if(err){
//     console.log(‘Error while deleting the employee’);
//     result(null, err);
// }else{
//     result(null.res);
// }
// })

// Module.exports = Employee;
