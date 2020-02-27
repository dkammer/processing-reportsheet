# Processing Report Sheet

Small tool to create graphical reports from assessment points of exams or other student works. This is not a grading tool, it only shows points of a student in relation to the average points by the whole group.

<img src="https://github.com/dkammer/processingreportsheet/raw/master/example.png" alt="Example Sheet" width="50%">

## Installation and Running

1. The [Processing IDE](https://processing.org/download/) is required to launch the program. 
2. After installation of Processing, download or clone the repository and launch the Processing Sketch by opening the file _processingreportsheet.pde_
3. Customize the settings found in the tab _constants_

```java
// input to the program in correct format (see below)
String resultFile = "Computer-Science-Exam-2019"; 
// produce single pdf files or one file
boolean singlePage = false;
// change the language (e.g. DE for german)
String language = "EN";
```

4. Run the program – there is minimal error detection so your input file should be valid
5. You will find a PDF named after your input file in the directory of the sketch or multiple PDF files based on your choice of options

## File Format

Report Sheet reads a single CSV file with your assessment results. 

### Conventions

* The file must be inside the data directory of the Processing sketch
* The filename will be used as title of each report sheet (stripped from dashes)
* Only the Id column and three columns for each task are mandatory
* Please repeat descriptions and maximum points for each task in the first two columns and then note the individual points achieved
* Important note: The files should be comma-separated, not with semicolons!

### Example

| Id    | Name  | ... | 1_Description | 1_MaxPoints | 1_Points | 2_Description | 2_MaxPoints | 2_Points | ... |
| ------| ----- | --- | ------------- | --- | --- | ------------- | --- | --- | --- |
| 12345 | Lorem | ... | Some Task     | 12  | 12  | Another Task  | 6   | 4   | ... |
| 54321 | Ipsum | ... | Some Task     | 12  | 10  | Another Task  | 6   | 3   | ... |
| 12543 | Sit   | ... | Some Task     | 12  | 4   | Another Task  | 6   | 1   | ... |
| _... more unique IDs_ | _... more names_ | _... more arbitrary columns_ | _..._ | _..._ | _..._ | _..._ | _..._ | _..._ | _..._ |

See also the example file in the repository (data/Computer-Science-Exam-2019.csv).
