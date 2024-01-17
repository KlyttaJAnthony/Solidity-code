//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Structs{

    //creating a struct of student
    struct Student{
        string name;
        uint roll_num;
        bool qualified;
    }

    //creating a public array of type Student called students
    Student[] public students;

    //addStudents takes three arguments for the new students name, roll number, and qualification status.
    //Then, it adds the student's data to the students array with the .push line 
    //However, there are multiple ways of writing this functions performance
    function addStudents(string calldata _name, uint _roll_num, bool _qualified) public {
        students.push(Student(_name, _roll_num, _qualified));
        //other way of doing it below
        // students.push(Student({roll_num: _roll_num, name: _name, qualified: _qualified}))
    }
     //or we can performe the addStudents function this:
    //this might be better since we can directly see which variable is going to what
    // function addStudent(string calldata _name, uint _roll_num, bool _qualified) public {

    //     Student memory student;
    //     student.name = _name;
    //     student.roll_num = _roll_num;
    //     student.qualified = _qualified;

    //     students.push(student);
    // }

}