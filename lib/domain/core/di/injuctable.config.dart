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
import 'package:techqrmaintance/domain/authregmodel/auth_repo.dart' as _i291;
import 'package:techqrmaintance/infrastructure/authservices/auth_services.dart'
    as _i447;

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
    gh.lazySingleton<_i291.AuthRepoReg>(() => _i447.AuthServices());
    gh.factory<_i600.AuthblocBloc>(
        () => _i600.AuthblocBloc(gh<_i291.AuthRepoReg>()));
    return this;
  }
}
