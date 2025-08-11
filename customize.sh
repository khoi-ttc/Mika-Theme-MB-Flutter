#uhh you might seeing these script, believe me no malicious here at all
echo ----------
echo Đang buộc dừng app MB Bank...
am force-stop com.mbmobile
echo ----------
echo Đang tạo thư mục theme....
mkdir '/data/user/0/com.mbmobile/app_flutter/app_theme/'
mkdir '/data/user/0/com.mbmobile/app_flutter/app_theme/unzip'
echo ----------
echo Đang copy theme...
unzip -o "$ZIPFILE" 'MikaXD.bin'
unzip MikaXD.bin -o -d '/data/user/0/com.mbmobile/app_flutter/app_theme/unzip/'
sleep 2
echo ----------
echo MBBank/MBCP sẽ mở sau 10 giây, bạn vui lòng đăng nhập, và ấn [Áp dụng] hoặc [Apply] để hoàn tất cài theme !
echo -------------
sleep 10
echo Starting flutter activity...
am start -n com.mbmobile/io.flutter.plugins.MainActivity
input keyevent KEYCODE_HOME
sleep 1
am start -a android.intent.action.VIEW -d 'https://mbbank.onelink.me/QPF5?af_dp=mbbank%3A%2F%2Finstallingnew&af_force_deeplink=true&ad_dp=theme_detail&id=aa3cb89a-8325-41b4-b59b-dfaea086cf80' com.mbmobile
echo -------------------
