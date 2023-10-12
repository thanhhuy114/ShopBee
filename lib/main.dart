import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Demo Material App'),
          ),
          body: const Center(child: Text("Material App"))),
      darkTheme: ThemeData(primaryColor: Colors.grey),
      color: Colors.amberAccent,
      supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}




// Dựa trên thông tin được cung cấp, có vẻ như có một số vấn đề với cài đặt Flutter của bạn. Hãy cùng tìm hiểu chi tiết:

// 1. Flutter: Kiểm tra bác sĩ Flutter đã gặp lỗi và có vẻ như đường dẫn đến tệp nhị phân Flutter không hợp lệ. Điều này có thể do thiếu hoặc đường dẫn không chính xác. Bạn cần kiểm tra cài đặt Flutter của mình và đảm bảo rằng đường dẫn được đặt đúng.

// 2. Android toolchain: Thành phần cmdline-tools thiếu trong Android SDK của bạn. Bạn có thể khắc phục điều này bằng cách chạy lệnh `path/to/sdkmanager --install "cmdline-tools;latest"` trong cửa sổ command prompt. Điều này sẽ cài đặt thành phần cmdline-tools cần thiết. Ngoài ra, trạng thái giấy phép Android không xác định. Bạn có thể chấp nhận giấy phép SDK bằng cách chạy `flutter doctor --android-licenses` trong cửa sổ command prompt.

// 3. Visual Studio: Visual Studio thiếu các thành phần cần thiết để phát triển Flutter. Để khắc phục điều này, bạn cần chạy lại trình cài đặt Visual Studio và đảm bảo bao gồm "Desktop development with C++" workload. Trong workload đó, đảm bảo rằng các thành phần sau được chọn: MSVC v142 - VS 2019 C++ x64/x86 build tools (cài đặt phiên bản mới nhất nếu có nhiều phiên bản), C++ CMake tools for Windows và Windows 10 SDK.

// Nên giải quyết từng vấn đề một để đảm bảo cài đặt Flutter đúng cách. Nếu bạn gặp khó khăn gì khác, bạn có thể tìm sự trợ giúp bằng cách báo cáo các vấn đề trên trang GitHub của Flutter tại địa chỉ https://github.com/flutter/flutter/issues.