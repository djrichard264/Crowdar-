try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False
from selenium import webdriver

@keyword("CHROME OPTIONS")
def options():
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    #chrome_options.add_argument("--window-size=1920,1080")
    #chrome_options.add_argument("--window-size=2560,1440")
    chrome_options.add_argument("--window-size=2880,1620")
    chrome_options.add_argument("--log-path=path/to/log_file.log")
    chrome_options.headless = True
    return chrome_options

