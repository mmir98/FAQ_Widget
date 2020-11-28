import 'package:flutter/material.dart';
import 'FAQ_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'FAQ Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, String> list = {
    "طاقچه چیست؟": """
طاقچه فروشگاه نسخه‌ی الکترونیک قانونی کتاب‌ها، مجلات و روزنامه‌های فارسی است که امکان مطالعه‌ی آن‌ها را بر روی سایت طاقچه، تلفن‌های هوشمند و تبلت‌های اندروید و iOS فراهم می‌کند.""",
    "چه کتاب‌هایی روی طاقچه قرار می‌گیرد؟": """
هدف طاقچه، تبدیل شدن به یک کتابخانه‌ی جامع در تمام زمینه‌های نشر است و محدودیتی در زمینه‌ی دسته‌بندی محصولات ندارد. فروشگاه طاقچه هر روز با کتاب‌های تازه‌ای از ناشران فعال کشور و همچنین مجلات و روزنامه‌های ایران به‌روز می‌شود.""",
    "آیا همه‌ی کتاب‌های طاقچه پولی هستند؟": """
خیر. کتاب‌های رایگان نیز در فروشگاه طاقچه وجود دارند و تلاش ما بر این است که به صورت مداوم به تعداد این کتب بیافزاییم. از این رو برخی از کتاب‌ها که دیگر مشمول حقوق مولف نیستند به رایگان در طاقچه قرار می‌گیرند.""",
    "کتاب‌ها به چه قیمتی بر روی طاقچه عرضه می‌شوند؟": """
کتاب‌های قرار گرفته بر روی طاقچه بر اساس درخواست ناشر قیمت‌گذاری می‌شوند. البته به دلیل حذف شدن هزینه‌ی چاپ و کاغذ، قیمت کتاب در طاقچه حدود ۳۰ تا ۴۰ درصد نسخه‌ی چاپی آن است.""",
    "کتاب‌های خریداری شده از طاقچه را به چه طریق می‌توان مطالعه کرد؟": """
اگر کتاب را از سایت طاقچه خریداری کرده باشید، آن کتاب در قسمت آرشیو کتاب‌خانه‌ی اپلیکیشن طاقچه‌ی شما (با همان حساب کاربری) قرار می‌گیرد. از این طریق شما می‌توانید کتاب را دریافت کرده و شروع به مطالعه‌ی آن کنید. اگر کتاب را مستقیما از درون اپلیکیشن خریداری کنید، پس از اتمام فرآیند خرید، دانلود کتاب به صورت خودکار شروع خواهد شد. همچنین با امکان جدیدی که طاقچه فراهم کرده است، شما می‌توانید کتاب خریداری‌شده را مستقیما در سایت طاقچه مطالعه کنید.(برای این کار لازم است با حساب کاربری خود وارد سایت طاقچه شوید)""",
    "کتاب‌خانه‌ی طاقچه چیست و چه محدودیتی در نحوه‌ی استفاده از آن وجود دارد؟":
        """
همه‌ی کتاب‌هایی که شما با حساب کاربری خود از طاقچه خریداری می‌کنید در کتاب‌خانه‌ی حساب کاربری شما قرار می‌گیرند و همیشه در سامانه‌ی ابری طاقچه محفوظ خواهند بود. به‌این‌ترتیب حتی پس از پاکسازی یا تعویض گوشی یا تبلت خود می‌توانید بدون نیاز به پرداخت دوباره‌ی وجه، باز هم آنها را دریافت کنید. تنها محدودیت استفاده از کتاب‌خانه‌ی طاقچه در تعداد دستگاه‌هایی است که یک حساب کاربری طاقچه را به آن‌ها متصل می‌کنید (۳ دستگاه).""",
    "تفاوت نسخه‌ی ePUB و PDF کتاب‌ها در چیست؟": """
ePUB استانداردی جهانی برای کتاب‌های الکترونیک است و اکثر کتاب‌هایی که بر روی طاقچه در دسترس هستند به این فرمت می‌باشند. ePUB خوان طاقچه به شما این امکان را می‌دهد که مستقل از اندازه‌ی صفحه‌ی نمایشگر خود بتوانید به راحتی کتاب‌های خود را مطالعه کنید. اما برخی کتب و اکثر مجلات و روزنامه‌ها باید به صورت Fixed Layout‌ نمایش داده شوند زیرا حفظ صفحه‌آرایی در آن‌ها حائز اهمیت بالایی می‌باشد. این قبیل آثار، به صورت PDF در طاقچه قرار داده می‌شوند و شما می‌توانید با دو بار کلیک کردن روی ستونی از متن که می‌خواهید آن را مطالعه کنید، متن را بزرگنمایی کنید.""",
    "چگونه باید از طاقچه کتاب خرید؟": """
برای خرید کتاب لازم است یک حساب کاربری در طاقچه ایجاد کنید تا همیشه بتوانید کتاب‌های خریداری شده برای آن حساب را در دسترس داشته باشید. پرداخت مبلغ کتاب از طریق درگاه امن بانکی (شاپرک)، پرداخت ارزی (PayPal) و یا کیف پول مایکت صورت می‌گیرد. پس از خرید، کتاب در کتاب‌خانه‌ی طاقچه شما قرار خواهد گرفت.""",
    "آیا برای خواندن کتاب رایگان هم لازم است در طاقچه حساب کاربری داشت؟": """
خیر. برای خواندن کتاب‌های رایگان، هم می‌توانید از سایت طاقچه استفاده کنید و هم با نصب اپلیکیشن بر روی گوشی یا تبلت، کتاب را دریافت و سپس مطالعه کنید""",
    "خرید کتاب در اپلیکیشن اندروید و iOS طاقچه چه تفاوتی دارد؟": """
به دلیل محدودیت‌های وضع شده توسط Apple، خرید کتاب به صورت مستقیم از درون نسخه‌ی iOS طاقچه امکان‌پذیر نیست و خرید باید از درون سایت صورت گیرد. اما در نسخه‌ی اندروید طاقچه، خرید را می‌توانید مستقیما از درون اپلیکیشن انجام دهید."""
  };

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var appbar = AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(widget.title),
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: appbar,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            Container(
              height: mediaQuery.size.height -
                  appbar.preferredSize.height -
                  mediaQuery.padding.top,
              child: FAQWidget(
                content: list,
                isRTL: false,
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
