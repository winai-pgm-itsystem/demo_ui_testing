import unittest
from time import sleep
from appium import webdriver
from appium.options.ios import XCUITestOptions
from appium.webdriver.common.appiumby import AppiumBy
from appium.webdriver.appium_connection import AppiumConnection

class CustomAppiumConnection(AppiumConnection):
    pass

appium_server_url = 'http://localhost:4723'
custom_executor = CustomAppiumConnection(remote_server_addr=appium_server_url)

options = XCUITestOptions().load_capabilities({
    'platformName': 'iOS',
    'automationName' : 'XCUITest',
    'bundleId' : 'com.example.demoUiTesting',
    'udid' : '88A2D997-3872-4AA8-A43F-EBEAD4D2A82B'
})

class TestAppium(unittest.TestCase):

    def setUp(self):
        self.driver =webdriver.Remote(custom_executor, options=options)

    def test_admin_demo_ui_testing(self):
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='Admin').click()
        sleep(2)
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='login').click()
        sleep(2)
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='Show').click()
        sleep(4)
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='Back').click()
        sleep(2)

        # assert
        self.assertEqual(self.driver.find_element(by=AppiumBy.NAME, value='Admin').get_attribute('name'), 'Admin')
        self.assertEqual(self.driver.find_element(by=AppiumBy.NAME, value='Activity').get_attribute('name'), 'Activity')
        self.assertEqual(self.driver.find_element(by=AppiumBy.NAME, value='Obligation').get_attribute('name'), 'Obligation')


    def test_user_demo_ui_testing(self):
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='User').click()
        sleep(2)
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='login').click()
        sleep(2)
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='Show').click()
        sleep(4)
        self.driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='Back').click()
        sleep(2)

        # assert
        self.assertEqual(self.driver.find_element(by=AppiumBy.NAME, value='User').get_attribute('name'), 'User')
        self.assertEqual(self.driver.find_element(by=AppiumBy.NAME, value='Activity').get_attribute('name'), 'Activity')
        self.assertEqual(self.driver.find_element(by=AppiumBy.NAME, value='Obligation').get_attribute('name'), 'Obligation')

    def tearDown(self):
            self.driver.quit()



if __name__ == '__main__':
    unittest.main()
