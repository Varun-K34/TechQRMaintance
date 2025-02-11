// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:techqrmaintance/application/authbloc/authbloc_bloc.dart'
    as _i600;
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart'
    as _i941;
import 'package:techqrmaintance/application/checkbloc/checkbloc_bloc.dart'
    as _i794;
import 'package:techqrmaintance/application/complaintdetailbloc/complaintdetailbloc_bloc.dart'
    as _i638;
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart'
    as _i91;
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart' as _i651;
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart' as _i15;
import 'package:techqrmaintance/domain/authregmodel/auth_repo.dart' as _i291;
import 'package:techqrmaintance/domain/complaintindetail/complaint_in_detail.dart'
    as _i942;
import 'package:techqrmaintance/domain/complaintmodel/complaint_repo.dart'
    as _i308;
import 'package:techqrmaintance/domain/core/splashcheck/splash_check.dart'
    as _i829;
import 'package:techqrmaintance/domain/core/spstoreduser/sp_stored_repo.dart'
    as _i158;
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_repo.dart'
    as _i489;
import 'package:techqrmaintance/domain/usermodel/user_log_repo.dart' as _i765;
import 'package:techqrmaintance/infrastructure/authservices/auth_services.dart'
    as _i447;
import 'package:techqrmaintance/infrastructure/checkloginservices/check_login_service.dart'
    as _i757;
import 'package:techqrmaintance/infrastructure/complaintgetservices/complaint_get_services.dart'
    as _i396;
import 'package:techqrmaintance/infrastructure/deviceregservices/device_reg_seervices.dart'
    as _i1016;
import 'package:techqrmaintance/infrastructure/getcomplaintindetailservices/get_complaint_in_detail_services.dart'
    as _i305;
import 'package:techqrmaintance/infrastructure/spstroeditemservices/sp_stored_item_services.dart'
    as _i1027;
import 'package:techqrmaintance/infrastructure/userlogservices/user_log_services.dart'
    as _i819;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i91.DeviceregblocBloc>(() => _i91.DeviceregblocBloc());
    gh.lazySingleton<_i829.SplashCheckRepo>(() => _i757.CheckLoginServices());
    gh.lazySingleton<_i942.DetailComplaintRepo>(
        () => _i305.GetComplaintInDetailServices());
    gh.lazySingleton<_i158.SpStoredUser>(() => _i1027.SpStoredItem());
    gh.lazySingleton<_i765.UserLogRepo>(() => _i819.UserLogServices());
    gh.lazySingleton<_i308.ComplaintRepo>(() => _i396.ComplaintGetServices());
    gh.lazySingleton<_i489.DeviceRegRepo>(() => _i1016.DeviceRegService());
    gh.lazySingleton<_i291.AuthRepoReg>(() => _i447.AuthServices());
    gh.factory<_i651.LogblocBloc>(
        () => _i651.LogblocBloc(gh<_i765.UserLogRepo>()));
    gh.factory<_i638.ComplaintdetailblocBloc>(
        () => _i638.ComplaintdetailblocBloc(gh<_i942.DetailComplaintRepo>()));
    gh.factory<_i941.ComplaintblocBloc>(
        () => _i941.ComplaintblocBloc(gh<_i308.ComplaintRepo>()));
    gh.factory<_i15.SpblocBloc>(
        () => _i15.SpblocBloc(gh<_i158.SpStoredUser>()));
    gh.factory<_i794.CheckblocBloc>(
        () => _i794.CheckblocBloc(gh<_i829.SplashCheckRepo>()));
    gh.factory<_i600.AuthblocBloc>(
        () => _i600.AuthblocBloc(gh<_i291.AuthRepoReg>()));
    return this;
  }
}
