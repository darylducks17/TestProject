# TestProject

Learning Web Automation using Robot Framework (Selenium with Python) as part of my placement.

## Topics I Have Covered

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
- Executing tests parallelly
- Headless browser testing

## Pre-requisites

### Installing Robot Framework

- Install the latest version of Python: <https://www.python.org/>
  - Ensure you tick the `Add to PATH` checkbox when downloading Python
- Install the latest version Robot Framework using ``` pip install robotframework ``` in CMD.
  - This does not upgrade automatically, so update using ``` pip install --upgrade robotframework ```
- Verify both Python and Robot Framework installation by doing ``` robot --version ``` and ``` python --version ``` in CMD.

### Installing Selenium Library and Drivers

- To run web automation testing in Robot Framework you need to install we testing library called Selenium Library which uses the Selenium tool internally.
  - Install Selenium Library using ``` pip install robotframework-seleniumframework ```
- After installing the library you will also need to install the browser and OS specific browser drivers for the browsers you want to test.
  - For TestProject I used Edge, so downloaded the Edge driver from the website.
    - <https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/>

### Other Pre-requisites  

- You will need to install other packages to efficiently run all the tests in TestProject.
  - Robot Framework Data Driver ``` pip install robotframework-datadriver ```
        - To run data driven tests
    - Robot Framework Pabot ``` pip install robotframework-pabot ```
      - To run tests parallelly

## How to run tests sequentially

- Executes all the tests
``` robot -d Results TestCases\ ```
``` robot -d Results TestCases\*.robot ```

- Executes tests which contain the first three letters
``` robot -d Results TestCases\Reg*.robot ```

## How to run tests parallelly

- Executes tests parallelly
``` Pre-req: install robotframework-pabot in CMD ```
``` pabot --processes 2 TestCase\*.robot ```

- Executes test parallelly but saves the results in the Results folder
``` pabot --processes 2 --outputdir Results TestCase\*.robot ```

- Executes tests parallelly but without opening the project on your IDE/text editor
  - Create a batch file - run.bat
    - In run.bat specify the path
 ``` C:\Users\admin\xxxxxx\xxxxxx\TestProject pabot --processes 2 --outputdir Results TestCases\*.robot ```
    - Run the CMD script

## Note to Self

- Ensure to change to the correct path in run.bat

## Sources

- <https://www.youtube.com/playlist?list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG>
