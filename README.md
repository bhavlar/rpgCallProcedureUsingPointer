# rpgCallProcedureUsingPointer
RPG example Using pointers as procedure and parameter pointers
<br><br>My first contribution to GitHub is a procedure execution using procedure pointer and parameter as a pointer.
<br><br>Existing tableX is a table that is accessed by many RPG* programs/procedures via F spec or sql script.
<br><br>I want to apply modular and layered solution to accessing/selecting data from tablex.
<br><br>Solution is to leverage pointers for both procedure execution and pointing to program/procedure variable values.
<br><br>Game plan is to remove the legacy use of the classic setll, readE and dow loop processing tableX data with a procedure with pointers solution.
<br><br><table border="1">
  <tr><td>Existing legacy processing:</td>
      <td>&nbsp;</td>
      <td>Prime:<br>SQL variable<br>ProcedurePointer<br>Parameter pointer</td>      
      <td>&nbsp;</td>
      <td>Call procedure pointer solution</td>
  </tr>
  <tr>
    <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/b589cebf-7fe9-4107-b841-106d5aeadf70?width=150&height=200" width="300" height="200"></td>
    <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/5df0341f-36d2-464c-a98e-8eaf5593df66" width="50" height="50"></td>
    <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/fa77812f-fad2-4d16-b002-2c67ac6ae181" width="300" height="200"></td>
    <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/5df0341f-36d2-464c-a98e-8eaf5593df66" width="50" height="50"></td>    
    <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/ce98fcc7-3cfd-4068-812f-dc2741041259" width="300" height="200"></td>
  </tr>
</table>
<br>
<table border="1">
   <tr>
     <td>Procedure processTablexRowsUsingPointer processing</td>
     <td>&nbsp;</td>
     <td>Procedure doSomeProcessing, the actual business process</td>
   </tr>
   <tr>
     <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/aa501626-ded7-420a-8d4d-e1c65540cbbc" width="400" height="200"></td>
     <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/5df0341f-36d2-464c-a98e-8eaf5593df66" width="50" height="50"></td></td>
     <td><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/29df3bd4-e672-4617-87d3-a7633952913e" width="400" height="200"></td>
   </tr>
</table> 
<br>

<br><br>**Information:**
<br>This repo has a proof of concept command and program:
<br><br>Command: pocprctblx
<br>Program: pocprctblx 
<br><br>The command and program are just to test the concept.
<br><br>Within your legacy program or legacy procedure that has a conventional setll/reade over tableX followed by a dow (doWhile) loop, 
<br>these legacy lines of code would be replaced with a call to procedure processTablexRowsUsingProcedurePointer.
<br><br>**Structure:**
<br><br>**command: pocprctblx**
<br>command execution: pocprctblx sqlScript('select * from tablex') parm01('VALUE01') parm02('VALUE02') parm03('VALUE03')
<br>command pocprctblx executes program pocprctblx
<br><br>**program: pocprctblx**
<br>program execution: call pgm(pocprctblx) parms('select * from tablex' 'VALUE1' 'VALUE2' 'VALUE3')
<br>program call prcocedure: processTableXUsingProcedurePointer(sqlScript:procedurePointer:parameterPointer);
<br><br>**procedure: processTableXUsingProcedurePointer**
<br>procedure processTableXUsingProcedurePointer calls procedure doSomeProcessing
<br><br>**procedure: doSomeProcessing**
<br>procedure doSomeProcessing executes the actual row level business process.
<br><br>Converting many programs from legacy code style to using the procedure pointer model could look like:
<br><img src="https://github.com/bhavlar/rpgCallProcedureUsingPointer/assets/62497210/e0241833-d91f-4db7-8c26-739d66a13c3a" width="1000" height="600">
<br><br>The access to tableX was an F spec or SQL script within three legacy programs. 
<br><br>The new model has provided a mechanism of moving tableX select access from 3 programs to 1 lower level procedure.
<br><br> We have modularised and layered the select access of tableX!

