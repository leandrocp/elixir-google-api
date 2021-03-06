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

defmodule GoogleApi.DNS.V1.Model.DnsKeySpec do
  @moduledoc """
  Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.

  ## Attributes

  - algorithm (String.t): String mnemonic specifying the DNSSEC algorithm of this key. Defaults to: `null`.
    - Enum - one of [ecdsap256sha256, ecdsap384sha384, rsasha1, rsasha256, rsasha512]
  - keyLength (integer()): Length of the keys in bits. Defaults to: `null`.
  - keyType (String.t): One of \&quot;KEY_SIGNING\&quot; or \&quot;ZONE_SIGNING\&quot;. Keys of type KEY_SIGNING have the Secure Entry Point flag set and, when active, will be used to sign only resource record sets of type DNSKEY. Otherwise, the Secure Entry Point flag will be cleared and this key will be used to sign only resource record sets of other types. Defaults to: `null`.
    - Enum - one of [keySigning, zoneSigning]
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dns#dnsKeySpec\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => any(),
          :keyLength => any(),
          :keyType => any(),
          :kind => any()
        }

  field(:algorithm)
  field(:keyLength)
  field(:keyType)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.DnsKeySpec do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.DnsKeySpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.DnsKeySpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
