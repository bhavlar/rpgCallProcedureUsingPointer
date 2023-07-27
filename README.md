# rpgCallProcedureUsingPointer
RPG example Using pointers as procedure and parameter pointers

My first contribution to GitHub is a procedure execution using procedure pointer and parameter as a pointer.

Here is a legacy piece of processing:

![image](https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/b589cebf-7fe9-4107-b841-106d5aeadf70?width=150&height=200)

Let's try and make this pointer based:

![image](https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/fa77812f-fad2-4d16-b002-2c67ac6ae181)

Pass parameters to procedure

![image](https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/ce98fcc7-3cfd-4068-812f-dc2741041259)

Procedure in detail:

![image](https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/aa501626-ded7-420a-8d4d-e1c65540cbbc)

The actual procedure to action the business process:

![image](https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/29df3bd4-e672-4617-87d3-a7633952913e)

Legacy code vs pointer code

![image](https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/e6217458-a8ed-4e0b-80f5-40042ad91db7)

POC
The repo has a proof on concept command & program called pocprctblx.cmd & pocprctblx.rpgle. These two objects are just to test the concept, the actual legacy code within a program that has a conventional setll/reade with loop processing would be replaced with the new procedure call.

POC Structure:

**command: pocprctblx **
command execution: pocprctblx sqlScript('select * from tablex') parm01('VALUE01') parm02('VALUE02') parm03('VALUE03')
command pocprctblx executes program pocprctblx

**program: pocprctblx**
program execution: call pgm(pocprctblx) parms('select * from tablex' 'VALUE1' 'VALUE2' 'VALUE3')
program prcocedure execution: processTableXUsingProcedurePointer(sqlScript:procedurePointer:parameterPointer);

**procedure: processTableXUsingProcedurePointer**
procedure processTableXUsingProcedurePointer calls procedure doTableXRowProcessing

**procedure: doTableXRowProcessing**
procedure doTableXRowProcessing executes the actual row level business process.


