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
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart' as _i651;
import 'package:techqrmaintance/domain/authregmodel/auth_repo.dart' as _i291;
import 'package:techqrmaintance/domain/complaintmodel/complaint_repo.dart'
    as _i308;
import 'package:techqrmaintance/domain/usermodel/user_log_repo.dart' as _i765;
import 'package:techqrmaintance/infrastructure/authservices/auth_services.dart'
    as _i447;
import 'package:techqrmaintance/infrastructure/complaintgetservices/complaint_get_services.dart'
    as _i396;
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
    gh.lazySingleton<_i765.UserLogRepo>(() => _i819.UserLogServices());
    gh.lazySingleton<_i308.ComplaintRepo>(() => _i396.ComplaintGetServices());
    gh.lazySingleton<_i291.AuthRepoReg>(() => _i447.AuthServices());
    gh.factory<_i651.LogblocBloc>(
        () => _i651.LogblocBloc(gh<_i765.UserLogRepo>()));
    gh.factory<_i941.ComplaintblocBloc>(
        () => _i941.ComplaintblocBloc(gh<_i308.ComplaintRepo>()));
    gh.factory<_i600.AuthblocBloc>(
        () => _i600.AuthblocBloc(gh<_i291.AuthRepoReg>()));
    return this;
  }
}
