# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/bigquery/data_transfer/v1/data_transfer_service"

class ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::ClientPathsTest < Minitest::Test
  def test_data_source_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_source_path project: "value0", data_source: "value1"
      assert_equal "projects/value0/dataSources/value1", path

      path = client.data_source_path project: "value0", location: "value1", data_source: "value2"
      assert_equal "projects/value0/locations/value1/dataSources/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_run_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.run_path project: "value0", transfer_config: "value1", run: "value2"
      assert_equal "projects/value0/transferConfigs/value1/runs/value2", path

      path = client.run_path project: "value0", location: "value1", transfer_config: "value2", run: "value3"
      assert_equal "projects/value0/locations/value1/transferConfigs/value2/runs/value3", path
    end
  end

  def test_transfer_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.transfer_config_path project: "value0", transfer_config: "value1"
      assert_equal "projects/value0/transferConfigs/value1", path

      path = client.transfer_config_path project: "value0", location: "value1", transfer_config: "value2"
      assert_equal "projects/value0/locations/value1/transferConfigs/value2", path
    end
  end
end