@shift /0
@echo off
color e

mode con:cols=84 lines=38
echo ****** -------------------------------------------------------------------- ******
echo ***** --------------------------- ADAM_ALWAN ------------------------------- *****
echo **** ------------------------------------------------------------------------ ****
echo *** ----------------------- -------------------------------------------------- ***
echo ** ------------------------ --------------------------------------------------- **
echo * -------------------------------------------------------------------------------*
adb wait-for-device
adb push SM-J327P /sdcard/system/
adb shell "su -c ' stop'"
adb shell "su -c ' mount -o rw,remount /system/ /system/'"
adb shell "su -c ' cp /sdcard/system/framework/* /system/framework/'"
adb shell "su -c ' cp /sdcard/system/appresource/* /system/appresource/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SecSettings2/* /system/priv-app/SecSettings2/'"
adb shell "su -c ' cp /sdcard/system/priv-app/TouchWizHome_2016B/* /system/priv-app/TouchWizHome_2016B/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SystemUI/* /system/priv-app/SystemUI/'"
adb shell "su -c ' cp /sdcard/system/priv-app/TeleService/* /system/priv-app/TeleService/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SecMyFiles2016B/* /system/priv-app/SecMyFiles2016B/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SmartManager_v4/* /system/priv-app/SmartManager_v4/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SecSetupWizard2015/* /system/priv-app/SecSetupWizard2015/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SecGallery2015/* /system/priv-app/SecGallery2015/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SecEmail_M/* /system/priv-app/SecEmail_M/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SecCalculator_M_Grace/* /system/priv-app/SecCalculator_M_Grace/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SamsungVideoPlayer2016/* /system/priv-app/SamsungVideoPlayer2016/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SamsungInCallUI/* /system/priv-app/SamsungInCallUI/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SamsungContacts/* /system/priv-app/SamsungContacts/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SamsungCamera6/* /system/priv-app/SamsungCamera6/'"
adb shell "su -c ' cp /sdcard/system/priv-app/SamsungCalendar/* /system/priv-app/SamsungCalendar/'"
adb shell "su -c ' cp /sdcard/system/priv-app/Messaging_Common/* /system/priv-app/Messaging_Common/'"
adb shell "su -c ' cp /sdcard/system/priv-app/EasyLauncher2_Zero/* /system/priv-app/EasyLauncher2_Zero/'"
adb shell "su -c ' cp /sdcard/system/app/ClockPackage_M_Grace_Mass/* /system/app/ClockPackage_M_Grace_Mass/'"
adb shell "su -c ' cp /sdcard/system/app/DocumentsUI/* /system/app/DocumentsUI/'"
adb shell "su -c ' cp /sdcard/system/app/EmergencyLauncher/* /system/app/EmergencyLauncher/'"
adb shell "su -c ' cp /sdcard/system/app/VideoTrimmer_Grace/* /system/app/VideoTrimmer_Grace/'"

echo.               
echo.
adb reboot                                
echo.
echo             --- (ok) arabic by ADAM_ALWAN ---
:exit