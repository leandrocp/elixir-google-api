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

defmodule GoogleApi.Drive.V3.Model.User do
  @moduledoc """
  Information about a Drive user.

  ## Attributes

  - displayName (String.t): A plain text displayable name for this user. Defaults to: `null`.
  - emailAddress (String.t): The email address of the user. This may not be present in certain contexts if the user has not made their email address visible to the requester. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;drive#user\&quot;. Defaults to: `null`.
  - me (boolean()): Whether this user is the requesting user. Defaults to: `null`.
  - permissionId (String.t): The user&#39;s ID as visible in Permission resources. Defaults to: `null`.
  - photoLink (String.t): A link to the user&#39;s profile photo, if available. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"displayName" => any(),
    :"emailAddress" => any(),
    :"kind" => any(),
    :"me" => any(),
    :"permissionId" => any(),
    :"photoLink" => any()
  }

  field(:"displayName")
  field(:"emailAddress")
  field(:"kind")
  field(:"me")
  field(:"permissionId")
  field(:"photoLink")
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.User do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


