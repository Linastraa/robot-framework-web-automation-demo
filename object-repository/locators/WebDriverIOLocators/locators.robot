*** Variables ***
${EMAIL_LOCATOR}              xpath=//android.widget.EditText[@content-desc="input-email"]
${PASSWORD_LOCATOR}           xpath=//android.widget.EditText[@content-desc="input-password"]
${LOGIN_BUTTON}               //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup
${LOGIN_LOCATOR}              //android.widget.TextView[@text="Login"]
${SUCCESS_MESSAGE}            //android.widget.TextView[@resource-id="android:id/message"]

${DRAG_LOCATOR}               //android.widget.TextView[@text="Drag"]
${BEFOREDRAGTEXT_LOCATOR}     //android.widget.TextView[@text="Drag and Drop"]

${DRAG_11}                     accessibility_id=drag-l1
${DROP_11}                     accessibility_id=drop-l1
${DRAG_12}                     accessibility_id=drag-c1
${DROP_12}                     accessibility_id=drop-c1
${DRAG_13}                     accessibility_id=drag-r1
${DROP_13}                     accessibility_id=drop-r1

${DRAG_21}                     accessibility_id=drag-l2
${DROP_21}                     accessibility_id=drop-l2
${DRAG_22}                     accessibility_id=drag-c2
${DROP_22}                     accessibility_id=drop-c2
${DRAG_23}                     accessibility_id=drag-r2
${DROP_23}                     accessibility_id=drop-r2

${DRAG_31}                     accessibility_id=drag-l3
${DROP_31}                     accessibility_id=drop-l3
${DRAG_32}                     accessibility_id=drag-c3
${DROP_32}                     accessibility_id=drop-c3
${DRAG_33}                     accessibility_id=drag-r3
${DROP_33}                     accessibility_id=drop-r3

${CONGSMESSAGE_LOCATOR}        //android.widget.TextView[@text="Congratulations"]