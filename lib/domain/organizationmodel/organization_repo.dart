import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization_model.dart';

abstract class OrganizationRepo {
  Future<Either<MainFailurs, OrganizationModel>> getOrganizations();
}
