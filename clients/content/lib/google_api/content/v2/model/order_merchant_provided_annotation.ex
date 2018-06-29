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

defmodule GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation do
  @moduledoc """


  ## Attributes

  - key (String.t): Key for additional merchant provided (as key-value pairs) annotation about the line item. Defaults to: `null`.
  - value (String.t): Value for additional merchant provided (as key-value pairs) annotation about the line item. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => any(),
          :value => any()
        }

  field(:key)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end