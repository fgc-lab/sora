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
import 'package:sora/application/archives/archives_bloc.dart' as _i357;
import 'package:sora/application/dashboard/dashboard_cubit.dart' as _i792;
import 'package:sora/application/downloads/downloads_bloc.dart' as _i614;
import 'package:sora/application/settings/settings_bloc.dart' as _i780;
import 'package:sora/domain/gallery_dl/i_gallery_dl_repository.dart' as _i1058;
import 'package:sora/domain/settings/i_settings_repository.dart' as _i513;
import 'package:sora/infrastructure/core/drift_injectable_module.dart' as _i759;
import 'package:sora/infrastructure/gallery_dl/drift_gallery_dl_repository.dart'
    as _i820;
import 'package:sora/infrastructure/settings/drift_settings_repository.dart'
    as _i368;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final iDriftInjectableModule = _$IDriftInjectableModule();
    gh.factory<_i792.DashboardCubit>(() => _i792.DashboardCubit());
    await gh.lazySingletonAsync<_i759.DriftSoraDatabase>(
      () => iDriftInjectableModule.drift,
      preResolve: true,
    );
    gh.lazySingleton<_i513.ISettingsRepository>(
      () => _i368.DriftSettingsRepository(gh<_i759.DriftSoraDatabase>()),
    );
    gh.lazySingleton<_i1058.IGalleryDLRepository>(
      () => _i820.DriftGalleryDLRepository(gh<_i759.DriftSoraDatabase>()),
    );
    gh.factory<_i780.SettingsBloc>(
      () => _i780.SettingsBloc(
        gh<_i1058.IGalleryDLRepository>(),
        gh<_i513.ISettingsRepository>(),
      ),
    );
    gh.factory<_i357.ArchivesBloc>(
      () => _i357.ArchivesBloc(gh<_i1058.IGalleryDLRepository>()),
    );
    gh.factory<_i614.DownloadsBloc>(
      () => _i614.DownloadsBloc(gh<_i1058.IGalleryDLRepository>()),
    );
    return this;
  }
}

class _$IDriftInjectableModule extends _i759.IDriftInjectableModule {}
