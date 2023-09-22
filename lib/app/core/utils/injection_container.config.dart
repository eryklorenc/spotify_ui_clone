// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart'
    as _i11;
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart' as _i4;
import 'package:spotify_ui_clone/data/remote_data_sources/album_view_remote_data_source.dart'
    as _i7;
import 'package:spotify_ui_clone/data/remote_data_sources/edit_profile_remote_data_source.dart'
    as _i6;
import 'package:spotify_ui_clone/features/album_view/cubit/album_view_cubit.dart'
    as _i9;
import 'package:spotify_ui_clone/features/profile/edit_profile/cubit/edit_profile_cubit.dart'
    as _i10;
import 'package:spotify_ui_clone/repositories/items_repository_album_view.dart'
    as _i8;
import 'package:spotify_ui_clone/repositories/login_repository.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.LoginRepository>(() => _i3.LoginRepository());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i4.AuthCubit>(() => _i4.AuthCubit(gh<_i3.LoginRepository>()));
    gh.lazySingleton<_i5.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i6.EditProfileRemoteRetrofitDataSource>(
        () => _i6.EditProfileRemoteRetrofitDataSource(gh<_i5.Dio>()));
    gh.factory<_i7.AlbumViewRemoteRetrofitDataSource>(
        () => _i7.AlbumViewRemoteRetrofitDataSource(gh<_i5.Dio>()));
    gh.factory<_i8.ItemsRepository>(() => _i8.ItemsRepository(
          albumViewRemoteDataSource:
              gh<_i7.AlbumViewRemoteRetrofitDataSource>(),
          editProfileRemoteDataSource:
              gh<_i6.EditProfileRemoteRetrofitDataSource>(),
        ));
    gh.factory<_i9.AlbumViewCubit>(
        () => _i9.AlbumViewCubit(gh<_i8.ItemsRepository>()));
    gh.factory<_i10.EditProfileCubit>(
        () => _i10.EditProfileCubit(gh<_i8.ItemsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
