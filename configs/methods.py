import pytesseract
from PIL import Image
import io
import base64
#from appium.webdriver.common.mobileby import MobileBy
from appium import webdriver
from io import BytesIO

from appium.webdriver.common.appiumby import AppiumBy

# Path to the Tesseract executable (update if needed)
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'  # Update this path if needed


def extract_text_from_image_bytes(image_bytes):
    """Extracts text from an image in bytes format using Tesseract OCR."""
    img = Image.open(BytesIO(image_bytes))
    text = pytesseract.image_to_string(img)
    return text


def find_specific_text_in_image_bytes(image_bytes, keyword):
    """Extracts text from image bytes and checks for the presence of a specific keyword."""
    extracted_text = extract_text_from_image_bytes(image_bytes)
    return keyword.lower() in extracted_text.lower()


def get_image_from_mobile_app(driver, xpath):
    """Captures an image from a mobile application element identified by its XPath."""
    element = driver.find_element(AppiumBy.XPATH, xpath)

    # Take a screenshot of the element
    screenshot = element.screenshot_as_base64

    # Convert the base64 screenshot to bytes
    image_bytes = base64.b64decode(screenshot)
    return image_bytes


def find_specific_text_from_mobile_app(driver, xpath, keyword):
    """Finds specific text from an image of a mobile app element."""
    image_bytes = get_image_from_mobile_app(driver, xpath)
    return find_specific_text_in_image_bytes(image_bytes, keyword)