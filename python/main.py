#!/usr/bin/env python3

import selenium


# def get_page(url: str) -> str:
#     """."""
#     res = requests.get(url, headers={
#         "User-Agent": "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0"
#     })

#     return res.content.decode("utf-8")


# with open('page.html', 'w') as f:
#     f.write(get_page("https://www.sofascore.com/"))

from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# options = webdriver.ChromeOptions()
# options.add_argument("--headless=new")
driver = webdriver.Firefox()

data = driver.get("https://www.sofascore.com/tennis")

while True:
    time.sleep(5)
    li = driver.find_elements(By.CLASS_NAME, "dOBKtv")
    for i in li:
        print(i.text)
