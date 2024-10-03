*** Variables ***
${USERNAME_LOCATOR}           accessibility_id=test-Username
${PASSWORD_LOCATOR}           accessibility_id=test-Password
${LOGINBUTTON_LOCATOR}        accessibility_id=test-LOGIN
${SUCCESS_MESSAGE}            //android.widget.TextView[@text="PRODUCTS"]
${TEXT}                       //android.widget.TextView[@text="© 2024 Sauce Labs. All Rights Reserved."]
${FIRSTITEM_LOCATOR}          //android.widget.TextView[@content-desc="test-Item title" and @text="Sauce Labs Backpack"]
${ADDTOCART_LOCATOR}          accessibility_id=test-ADD TO CART
${CART_LOCATOR}               //android.view.ViewGroup[@content-desc="test-Cart"]/android.view.ViewGroup/android.widget.ImageView
${MYCART_LOCATOR}             //android.widget.TextView[@text="YOUR CART"]

${USERNAME}                   standard_user
${PASSWORD}                   secret_sauce

${textt}                       android=UiSelector().className("android.view.ViewGroup").instance(12)
${log}                         accessibility_id=test-LOGIN