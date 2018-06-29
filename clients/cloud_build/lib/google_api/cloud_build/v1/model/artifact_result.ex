# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudBuild.V1.Model.ArtifactResult do
  @moduledoc """
  An artifact that was uploaded during a build. This is a single record in the artifact manifest JSON file.

  ## Attributes

  - fileHash ([FileHashes]): The file hash of the artifact. Defaults to: `null`.
  - location (String.t): The path of an artifact in a Google Cloud Storage bucket, with the generation number. For example, &#x60;gs://mybucket/path/to/output.jar#generation&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileHash => list(GoogleApi.CloudBuild.V1.Model.FileHashes.t()),
          :location => any()
        }

  field(:fileHash, as: GoogleApi.CloudBuild.V1.Model.FileHashes, type: :list)
  field(:location)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.ArtifactResult do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.ArtifactResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.ArtifactResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end