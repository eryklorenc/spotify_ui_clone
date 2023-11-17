// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart'
    as _i12;
import 'package:spotify_ui_clone/data/remote_data_sources/album_view/album_view_remote_data_source.dart'
    as _i7;
import 'package:spotify_ui_clone/data/remote_data_sources/edit_profile/edit_profile_remote_data_source.dart'
    as _i4;
import 'package:spotify_ui_clone/domain/repositories/items/items_repository.dart'
    as _i9;
import 'package:spotify_ui_clone/domain/repositories/login/login_repository.dart'
    as _i5;
import 'package:spotify_ui_clone/features/album_view/cubit/album_view_cubit.dart'
    as _i10;
import 'package:spotify_ui_clone/features/auth/cubit/auth_cubit.dart' as _i8;
import 'package:spotify_ui_clone/features/profile/edit_profile/cubit/edit_profile_cubit.dart'
    as _i11;
import 'package:spotify_ui_clone/features/search/cubit/search_cubit.dart'
    as _i6;

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
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
    gh.factory<_i4.EditProfileRemoteRetrofitDataSource>(
        () => _i4.EditProfileRemoteRetrofitDataSource(gh<_i3.Dio>()));
    gh.factory<_i5.LoginRepository>(() => _i5.LoginRepository());
    gh.factory<_i6.SearchCubit>(() => _i6.SearchCubit());
    gh.factory<_i7.AlbumViewRemoteRetrofitDataSource>(
        () => _i7.AlbumViewRemoteRetrofitDataSource(gh<_i3.Dio>()));
    gh.factory<_i8.AuthCubit>(() => _i8.AuthCubit(gh<_i5.LoginRepository>()));
    gh.factory<_i9.ItemsRepository>(() => _i9.ItemsRepository(
          albumViewRemoteDataSource:
              gh<_i7.AlbumViewRemoteRetrofitDataSource>(),
          editProfileRemoteDataSource:
              gh<_i4.EditProfileRemoteRetrofitDataSource>(),
        ));
    gh.factory<_i10.AlbumViewCubit>(
        () => _i10.AlbumViewCubit(gh<_i9.ItemsRepository>()));
    gh.factory<_i11.EditProfileCubit>(
        () => _i11.EditProfileCubit(gh<_i9.ItemsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
