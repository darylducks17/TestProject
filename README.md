# TestProject
Learning Web Automation using Robot Framework (Selenium with Python) as part of my placement at Atradius.

### Topics I Have Covered: 
- Handling input boxes
- Selecting & unselecting radio buttons
- Checking & unchecking check boxes
- Selecting options from drop down & list menus
- Waits & timeouts
- Closing single and multiple browsers
- Handling alerts (JavaScript)
- Capturing element & full page screenshots
- Performing mouse operations
- Scrolling page using JavaScript executor
- Handle tabbed & browser windows
- User defined keywords & resource files
- Scrolling page using JavaScript executor
- Working with For Loops
- Extracting link texts
- Handling web/HTML tables
- Data driven tests using scripts, Excel and CSV
- Grouping tests using tags
- POM design pattern 
- Executing tests parallely 

### How to run tests sequentially
Executes all the tests
``` robot -d Results TestCases\ ```
``` robot -d Results TestCases\*.robot ```

Executes tests which contain the first three letters 
``` robot -d Results TestCases\Reg*.robot ```

### How to run tests parallelly
Executes tests parallelly 
``` Pre-req: install robotframework-pabot in CMD ```
``` pabot --processes 2 TestCase\*.robot ```

Executes test parallelly but saves the results in the Results folder
``` pabot --processes 2 --outputdir Results TestCase\*.robot ```

Executes tests parallelly but without opening the project on your IDE/text editor
- Create a batch file - run.bat
- In run.bat specify the path 
 ``` C:\Users\admin\xxxxxx\xxxxxx\TestProject pabot --processes 2 --outputdir Results TestCases\*.robot ```
 - Run the CMD script

### Sources: 
- https://www.youtube.com/playlist?list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG
