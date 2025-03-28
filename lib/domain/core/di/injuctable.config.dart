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
import 'package:techqrmaintance/application/brandnadmodel/brand_and_model_bloc.dart'
    as _i606;
import 'package:techqrmaintance/application/catagorybloc/catogory_bloc.dart'
    as _i737;
import 'package:techqrmaintance/application/checkbloc/checkbloc_bloc.dart'
    as _i794;
import 'package:techqrmaintance/application/complaintdetailbloc/complaintdetailbloc_bloc.dart'
    as _i638;
import 'package:techqrmaintance/application/custbloc/customer_bloc.dart'
    as _i134;
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart'
    as _i91;
import 'package:techqrmaintance/application/getidregbloc/getidregbloc_bloc.dart'
    as _i32;
import 'package:techqrmaintance/application/GetLocation/get_location_bloc.dart'
    as _i306;
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart' as _i651;
import 'package:techqrmaintance/application/maintenancehistory/maintenancehistory_bloc.dart'
    as _i914;
import 'package:techqrmaintance/application/modelandbrand/model_and_brand_bloc.dart'
    as _i561;
import 'package:techqrmaintance/application/orgganizationbloc/oranization_bloc.dart'
    as _i818;
import 'package:techqrmaintance/application/requestscanqrbloc/request_scan_qr_endpoind_bloc.dart'
    as _i143;
import 'package:techqrmaintance/application/scanqrbloc/scan_qr_bloc_bloc.dart'
    as _i142;
import 'package:techqrmaintance/application/servicereqbyidbloc/service_req_by_id_bloc.dart'
    as _i1045;
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart'
    as _i600;
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart' as _i15;
import 'package:techqrmaintance/application/techlistbloc/tech_list_bloc.dart'
    as _i300;
import 'package:techqrmaintance/application/techperfomancebloc/tech_perfomence_bloc.dart'
    as _i299;
import 'package:techqrmaintance/application/updateservicebloc/update_service_req_bloc.dart'
    as _i188;
import 'package:techqrmaintance/domain/authregmodel/auth_repo.dart' as _i291;
import 'package:techqrmaintance/domain/catagorymodel/catagory_get_repo.dart'
    as _i185;
import 'package:techqrmaintance/domain/complaintindetail/complaint_in_detail.dart'
    as _i942;
import 'package:techqrmaintance/domain/complaintmodel/complaint_repo.dart'
    as _i308;
import 'package:techqrmaintance/domain/core/getidfordevicereg/get_id_for_device_reg.dart'
    as _i1051;
import 'package:techqrmaintance/domain/core/getlocation/get_loc_repo.dart'
    as _i399;
import 'package:techqrmaintance/domain/core/requestqrrepo/req_scan_qr_repo.dart'
    as _i279;
import 'package:techqrmaintance/domain/core/splashcheck/splash_check.dart'
    as _i829;
import 'package:techqrmaintance/domain/core/spstoreduser/sp_stored_repo.dart'
    as _i158;
import 'package:techqrmaintance/domain/customer_model/customer_repo.dart'
    as _i509;
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_repo.dart'
    as _i489;
import 'package:techqrmaintance/domain/historymodel/maintance_history_repo.dart'
    as _i315;
import 'package:techqrmaintance/domain/modelandbrandmodel/brand_repo.dart'
    as _i1043;
import 'package:techqrmaintance/domain/modelandbrandmodel/device_model_model_repo.dart'
    as _i936;
import 'package:techqrmaintance/domain/organizationmodel/organization_repo.dart'
    as _i253;
import 'package:techqrmaintance/domain/scanqrmodel/scan_qr_repo.dart' as _i899;
import 'package:techqrmaintance/domain/servicerequestmodel/service_update_repo.dart'
    as _i553;
import 'package:techqrmaintance/domain/servicerequestmodel/servicerequest_repo.dart'
    as _i1064;
import 'package:techqrmaintance/domain/servicerequestmodel/services_req_call_by_id.dart'
    as _i231;
import 'package:techqrmaintance/domain/techperfomencemodel/tech_perfomence_repo.dart'
    as _i5;
import 'package:techqrmaintance/domain/usermodel/technitian_list_repo.dart'
    as _i740;
import 'package:techqrmaintance/domain/usermodel/user_log_repo.dart' as _i765;
import 'package:techqrmaintance/infrastructure/authservices/auth_services.dart'
    as _i447;
import 'package:techqrmaintance/infrastructure/brandandmodelservices/brand_services.dart'
    as _i332;
import 'package:techqrmaintance/infrastructure/brandandmodelservices/model_services.dart'
    as _i1069;
import 'package:techqrmaintance/infrastructure/catagorygetservices/catagory_get_services.dart'
    as _i1055;
import 'package:techqrmaintance/infrastructure/checkloginservices/check_login_service.dart'
    as _i757;
import 'package:techqrmaintance/infrastructure/complaintgetservices/complaint_get_services.dart'
    as _i396;
import 'package:techqrmaintance/infrastructure/custservices/cust_services.dart'
    as _i338;
import 'package:techqrmaintance/infrastructure/deviceregservices/device_reg_seervices.dart'
    as _i1016;
import 'package:techqrmaintance/infrastructure/getcomplaintindetailservices/get_complaint_in_detail_services.dart'
    as _i305;
import 'package:techqrmaintance/infrastructure/getiddeviceregservices/get_id_for_device_reg_services.dart'
    as _i670;
import 'package:techqrmaintance/infrastructure/getlocationservices/get_loc_services.dart'
    as _i42;
import 'package:techqrmaintance/infrastructure/maintancehistoryservices.dart/maintance_history_services.dart'
    as _i1007;
import 'package:techqrmaintance/infrastructure/orgservices/org_services.dart'
    as _i844;
import 'package:techqrmaintance/infrastructure/requestqrendpointservices/req_qr_endpoint_services.dart'
    as _i834;
import 'package:techqrmaintance/infrastructure/scanqrservices/scan_qr_services.dart'
    as _i649;
import 'package:techqrmaintance/infrastructure/servicesrequestservices/service_req_by_id_services.dart'
    as _i681;
import 'package:techqrmaintance/infrastructure/servicesrequestservices/services_request_services.dart'
    as _i1025;
import 'package:techqrmaintance/infrastructure/servicesrequestservices/update_service_service.dart'
    as _i733;
import 'package:techqrmaintance/infrastructure/spstroeditemservices/sp_stored_item_services.dart'
    as _i1027;
import 'package:techqrmaintance/infrastructure/technitian_dropdown_services/tecnitiandropdownservices.dart'
    as _i775;
import 'package:techqrmaintance/infrastructure/techperfomenceservices.dart/tech_perfomence_services.dart'
    as _i986;
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
    gh.lazySingleton<_i185.CatagoryGetRepo>(() => _i1055.CatagoryServices());
    gh.lazySingleton<_i315.MaintanceHistoryRepo>(
        () => _i1007.MaintanceHistoryServices());
    gh.lazySingleton<_i253.OrganizationRepo>(() => _i844.OrgServices());
    gh.lazySingleton<_i829.SplashCheckRepo>(() => _i757.CheckLoginServices());
    gh.lazySingleton<_i942.DetailComplaintRepo>(
        () => _i305.GetComplaintInDetailServices());
    gh.lazySingleton<_i399.GetLocationRepo>(() => _i42.GetLocationServices());
    gh.lazySingleton<_i279.ReqScanQrRepo>(() => _i834.ReqQrEndpointServices());
    gh.lazySingleton<_i509.CustomerRepo>(() => _i338.CustomerServices());
    gh.lazySingleton<_i1064.ServicesRequestRepo>(
        () => _i1025.ServicesRequestServices());
    gh.lazySingleton<_i158.SpStoredUser>(() => _i1027.SpStoredItem());
    gh.lazySingleton<_i899.ScanQRRepo>(() => _i649.ScanQrServices());
    gh.lazySingleton<_i1051.GetIdForDeviceRegRepo>(
        () => _i670.GetIdForDeviceRegServices());
    gh.factory<_i600.ServiceRequestBloc>(
        () => _i600.ServiceRequestBloc(gh<_i1064.ServicesRequestRepo>()));
    gh.lazySingleton<_i5.TechPerfomenceRepo>(
        () => _i986.TechPerfomenceServices());
    gh.lazySingleton<_i740.TechnitianListRepo>(
        () => _i775.Tecnitiandropdownservices());
    gh.lazySingleton<_i765.UserLogRepo>(() => _i819.UserLogServices());
    gh.factory<_i143.RequestScanQrEndpoindBloc>(
        () => _i143.RequestScanQrEndpoindBloc(gh<_i279.ReqScanQrRepo>()));
    gh.lazySingleton<_i553.ServiceUpdateRepo>(
        () => _i733.UpdateServiceService());
    gh.lazySingleton<_i308.ComplaintRepo>(() => _i396.ComplaintGetServices());
    gh.lazySingleton<_i489.DeviceRegRepo>(() => _i1016.DeviceRegService());
    gh.lazySingleton<_i291.AuthRepoReg>(() => _i447.AuthServices());
    gh.lazySingleton<_i1043.DeiceBrandRepo>(() => _i332.BrandServices());
    gh.factory<_i914.MaintenancehistoryBloc>(
        () => _i914.MaintenancehistoryBloc(gh<_i315.MaintanceHistoryRepo>()));
    gh.lazySingleton<_i231.ServicesReqCallByIdRepo>(
        () => _i681.ServiceReqByIdServices());
    gh.lazySingleton<_i936.DeviceModelRepo>(() => _i1069.ModelServices());
    gh.factory<_i737.CatogoryBloc>(
        () => _i737.CatogoryBloc(gh<_i185.CatagoryGetRepo>()));
    gh.factory<_i606.BrandAndModelBloc>(
        () => _i606.BrandAndModelBloc(gh<_i1043.DeiceBrandRepo>()));
    gh.factory<_i142.ScanQrBlocBloc>(
        () => _i142.ScanQrBlocBloc(gh<_i899.ScanQRRepo>()));
    gh.factory<_i306.GetLocationBloc>(
        () => _i306.GetLocationBloc(gh<_i399.GetLocationRepo>()));
    gh.factory<_i651.LogblocBloc>(
        () => _i651.LogblocBloc(gh<_i765.UserLogRepo>()));
    gh.factory<_i638.ComplaintdetailblocBloc>(
        () => _i638.ComplaintdetailblocBloc(gh<_i942.DetailComplaintRepo>()));
    gh.factory<_i941.ComplaintblocBloc>(
        () => _i941.ComplaintblocBloc(gh<_i308.ComplaintRepo>()));
    gh.factory<_i561.ModelAndBrandBloc>(
        () => _i561.ModelAndBrandBloc(gh<_i936.DeviceModelRepo>()));
    gh.factory<_i818.OranizationBloc>(
        () => _i818.OranizationBloc(gh<_i253.OrganizationRepo>()));
    gh.factory<_i15.SpblocBloc>(
        () => _i15.SpblocBloc(gh<_i158.SpStoredUser>()));
    gh.factory<_i794.CheckblocBloc>(
        () => _i794.CheckblocBloc(gh<_i829.SplashCheckRepo>()));
    gh.factory<_i188.UpdateServiceReqBloc>(
        () => _i188.UpdateServiceReqBloc(gh<_i553.ServiceUpdateRepo>()));
    gh.factory<_i32.GetidregblocBloc>(
        () => _i32.GetidregblocBloc(gh<_i1051.GetIdForDeviceRegRepo>()));
    gh.factory<_i300.TechListBloc>(
        () => _i300.TechListBloc(gh<_i740.TechnitianListRepo>()));
    gh.factory<_i134.CustomerBloc>(
        () => _i134.CustomerBloc(gh<_i509.CustomerRepo>()));
    gh.factory<_i1045.ServiceReqByIdBloc>(
        () => _i1045.ServiceReqByIdBloc(gh<_i231.ServicesReqCallByIdRepo>()));
    gh.factory<_i299.TechPerfomenceBloc>(
        () => _i299.TechPerfomenceBloc(gh<_i5.TechPerfomenceRepo>()));
    gh.factory<_i600.AuthblocBloc>(
        () => _i600.AuthblocBloc(gh<_i291.AuthRepoReg>()));
    gh.factory<_i91.DeviceregblocBloc>(
        () => _i91.DeviceregblocBloc(gh<_i489.DeviceRegRepo>()));
    return this;
  }
}
