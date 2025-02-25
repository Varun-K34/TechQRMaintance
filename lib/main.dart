import 'package:techqrmaintance/Screens/home/adddevicebutton/reg_by_qr.dart';
import 'package:techqrmaintance/Screens/splash/splash_screen.dart';
import 'package:techqrmaintance/application/authbloc/authbloc_bloc.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';
import 'package:techqrmaintance/application/checkbloc/checkbloc_bloc.dart';
import 'package:techqrmaintance/application/complaintdetailbloc/complaintdetailbloc_bloc.dart';
import 'package:techqrmaintance/application/custbloc/customer_bloc.dart';
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart';
import 'package:techqrmaintance/application/getidregbloc/getidregbloc_bloc.dart';
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
import 'package:techqrmaintance/application/maintenancehistory/maintenancehistory_bloc.dart';
import 'package:techqrmaintance/application/scanqrbloc/scan_qr_bloc_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/domain/core/di/injuctable.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configinjuction();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<AuthblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ComplaintblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LogblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SpblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CheckblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ComplaintdetailblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<DeviceregblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<GetidregblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ScanQrBlocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomerBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MaintenancehistoryBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
