# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/bigtable/admin/v2/bigtable_table_admin.proto for package 'Google.Cloud.Bigtable.Admin.V2'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/bigtable/admin/v2/bigtable_table_admin_pb'

module Google
  module Cloud
    module Bigtable
      module Admin
        module V2
          module BigtableTableAdmin
            # Service for creating, configuring, and deleting Cloud Bigtable tables.
            #
            #
            # Provides access to the table schemas only, not the data stored within
            # the tables.
            class Service

              include GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.bigtable.admin.v2.BigtableTableAdmin'

              # Creates a new table in the specified instance.
              # The table can be created with a full set of initial column families,
              # specified in the request.
              rpc :CreateTable, ::Google::Cloud::Bigtable::Admin::V2::CreateTableRequest, ::Google::Cloud::Bigtable::Admin::V2::Table
              # Creates a new table from the specified snapshot. The target table must
              # not exist. The snapshot and the table must be in the same instance.
              #
              # Note: This is a private alpha release of Cloud Bigtable snapshots. This
              # feature is not currently available to most Cloud Bigtable customers. This
              # feature might be changed in backward-incompatible ways and is not
              # recommended for production use. It is not subject to any SLA or deprecation
              # policy.
              rpc :CreateTableFromSnapshot, ::Google::Cloud::Bigtable::Admin::V2::CreateTableFromSnapshotRequest, ::Google::Longrunning::Operation
              # Lists all tables served from a specified instance.
              rpc :ListTables, ::Google::Cloud::Bigtable::Admin::V2::ListTablesRequest, ::Google::Cloud::Bigtable::Admin::V2::ListTablesResponse
              # Gets metadata information about the specified table.
              rpc :GetTable, ::Google::Cloud::Bigtable::Admin::V2::GetTableRequest, ::Google::Cloud::Bigtable::Admin::V2::Table
              # Permanently deletes a specified table and all of its data.
              rpc :DeleteTable, ::Google::Cloud::Bigtable::Admin::V2::DeleteTableRequest, ::Google::Protobuf::Empty
              # Performs a series of column family modifications on the specified table.
              # Either all or none of the modifications will occur before this method
              # returns, but data requests received prior to that point may see a table
              # where only some modifications have taken effect.
              rpc :ModifyColumnFamilies, ::Google::Cloud::Bigtable::Admin::V2::ModifyColumnFamiliesRequest, ::Google::Cloud::Bigtable::Admin::V2::Table
              # Permanently drop/delete a row range from a specified table. The request can
              # specify whether to delete all rows in a table, or only those that match a
              # particular prefix.
              rpc :DropRowRange, ::Google::Cloud::Bigtable::Admin::V2::DropRowRangeRequest, ::Google::Protobuf::Empty
              # Generates a consistency token for a Table, which can be used in
              # CheckConsistency to check whether mutations to the table that finished
              # before this call started have been replicated. The tokens will be available
              # for 90 days.
              rpc :GenerateConsistencyToken, ::Google::Cloud::Bigtable::Admin::V2::GenerateConsistencyTokenRequest, ::Google::Cloud::Bigtable::Admin::V2::GenerateConsistencyTokenResponse
              # Checks replication consistency based on a consistency token, that is, if
              # replication has caught up based on the conditions specified in the token
              # and the check request.
              rpc :CheckConsistency, ::Google::Cloud::Bigtable::Admin::V2::CheckConsistencyRequest, ::Google::Cloud::Bigtable::Admin::V2::CheckConsistencyResponse
              # Creates a new snapshot in the specified cluster from the specified
              # source table. The cluster and the table must be in the same instance.
              #
              # Note: This is a private alpha release of Cloud Bigtable snapshots. This
              # feature is not currently available to most Cloud Bigtable customers. This
              # feature might be changed in backward-incompatible ways and is not
              # recommended for production use. It is not subject to any SLA or deprecation
              # policy.
              rpc :SnapshotTable, ::Google::Cloud::Bigtable::Admin::V2::SnapshotTableRequest, ::Google::Longrunning::Operation
              # Gets metadata information about the specified snapshot.
              #
              # Note: This is a private alpha release of Cloud Bigtable snapshots. This
              # feature is not currently available to most Cloud Bigtable customers. This
              # feature might be changed in backward-incompatible ways and is not
              # recommended for production use. It is not subject to any SLA or deprecation
              # policy.
              rpc :GetSnapshot, ::Google::Cloud::Bigtable::Admin::V2::GetSnapshotRequest, ::Google::Cloud::Bigtable::Admin::V2::Snapshot
              # Lists all snapshots associated with the specified cluster.
              #
              # Note: This is a private alpha release of Cloud Bigtable snapshots. This
              # feature is not currently available to most Cloud Bigtable customers. This
              # feature might be changed in backward-incompatible ways and is not
              # recommended for production use. It is not subject to any SLA or deprecation
              # policy.
              rpc :ListSnapshots, ::Google::Cloud::Bigtable::Admin::V2::ListSnapshotsRequest, ::Google::Cloud::Bigtable::Admin::V2::ListSnapshotsResponse
              # Permanently deletes the specified snapshot.
              #
              # Note: This is a private alpha release of Cloud Bigtable snapshots. This
              # feature is not currently available to most Cloud Bigtable customers. This
              # feature might be changed in backward-incompatible ways and is not
              # recommended for production use. It is not subject to any SLA or deprecation
              # policy.
              rpc :DeleteSnapshot, ::Google::Cloud::Bigtable::Admin::V2::DeleteSnapshotRequest, ::Google::Protobuf::Empty
              # Starts creating a new Cloud Bigtable Backup.  The returned backup
              # [long-running operation][google.longrunning.Operation] can be used to
              # track creation of the backup. The
              # [metadata][google.longrunning.Operation.metadata] field type is
              # [CreateBackupMetadata][google.bigtable.admin.v2.CreateBackupMetadata]. The
              # [response][google.longrunning.Operation.response] field type is
              # [Backup][google.bigtable.admin.v2.Backup], if successful. Cancelling the returned operation will stop the
              # creation and delete the backup.
              rpc :CreateBackup, ::Google::Cloud::Bigtable::Admin::V2::CreateBackupRequest, ::Google::Longrunning::Operation
              # Gets metadata on a pending or completed Cloud Bigtable Backup.
              rpc :GetBackup, ::Google::Cloud::Bigtable::Admin::V2::GetBackupRequest, ::Google::Cloud::Bigtable::Admin::V2::Backup
              # Updates a pending or completed Cloud Bigtable Backup.
              rpc :UpdateBackup, ::Google::Cloud::Bigtable::Admin::V2::UpdateBackupRequest, ::Google::Cloud::Bigtable::Admin::V2::Backup
              # Deletes a pending or completed Cloud Bigtable backup.
              rpc :DeleteBackup, ::Google::Cloud::Bigtable::Admin::V2::DeleteBackupRequest, ::Google::Protobuf::Empty
              # Lists Cloud Bigtable backups. Returns both completed and pending
              # backups.
              rpc :ListBackups, ::Google::Cloud::Bigtable::Admin::V2::ListBackupsRequest, ::Google::Cloud::Bigtable::Admin::V2::ListBackupsResponse
              # Create a new table by restoring from a completed backup. The new table
              # must be in the same instance as the instance containing the backup.  The
              # returned table [long-running operation][google.longrunning.Operation] can
              # be used to track the progress of the operation, and to cancel it.  The
              # [metadata][google.longrunning.Operation.metadata] field type is
              # [RestoreTableMetadata][google.bigtable.admin.RestoreTableMetadata].  The
              # [response][google.longrunning.Operation.response] type is
              # [Table][google.bigtable.admin.v2.Table], if successful.
              rpc :RestoreTable, ::Google::Cloud::Bigtable::Admin::V2::RestoreTableRequest, ::Google::Longrunning::Operation
              # Gets the access control policy for a Table or Backup resource.
              # Returns an empty policy if the resource exists but does not have a policy
              # set.
              rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
              # Sets the access control policy on a Table or Backup resource.
              # Replaces any existing policy.
              rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
              # Returns permissions that the caller has on the specified Table or Backup resource.
              rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
