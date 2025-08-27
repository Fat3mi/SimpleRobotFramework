# OrangeHRM Automation Testing (Robot Framework + Selenium)

This project contains automated UI tests for the [OrangeHRM demo site](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login), built using **Robot Framework** and **SeleniumLibrary**.  
It covers **login functionality (positive & negative tests)** and **basic dashboard interactions** such as navigating to the Buzz section.

## ⚡ Requirements

- **Python 3.12+**
- **Google Chrome / Mozilla Firefox** installed
- Corresponding WebDrivers:
  - `chromedriver`
  - `geckodriver`
- [Robot Framework](https://robotframework.org/)  
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)



## 📦 Installation

Clone the repo and install dependencies:

```bash
git clone https://github.com/Fat3mi/SimpleRobotFramework.git
cd SimpleRobotFramework

# Install Robot Framework + Selenium
pip install robotframework
pip install robotframework-seleniumlibrary
````

Download & place WebDrivers inside:

```
/home/WorkStation/Drivers/
    ├── chromedriver
    └── geckodriver
```

Make them executable:

```bash
chmod +x /home/WorkStation/Drivers/chromedriver
chmod +x /home/WorkStation/Drivers/geckodriver
```


## ▶️ Running Tests

Run all tests:

```bash
robot .
```

Run only login tests:

```bash
robot login.robot
```

Run dashboard navigation tests:

```bash
robot openSection.robot
```

Run tests by tag:

```bash
robot -i positive login.robot
robot -i negative login.robot
robot -i buzz openSection.robot
```

---

## 🧪 Test Coverage

* **Login Tests (`login.robot`)**

  * Positive login with valid credentials
  * Negative login with invalid credentials
  * Usability / environment tests (cross-browser, optional)

* **Dashboard Tests (`openSection.robot`)**

  * Navigate to *Buzz* section
  * Scroll to a target element
  * Verify user name & logout


## 📄 Reports & Logs

After each run, Robot Framework generates:

* `log.html` → Detailed execution log
* `report.html` → Test summary
* `output.xml` → Raw output for integrations


## 📝 License

This project is open-source and available under the [MIT License](LICENSE).
