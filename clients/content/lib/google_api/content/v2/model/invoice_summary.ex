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

defmodule GoogleApi.Content.V2.Model.InvoiceSummary do
  @moduledoc """


  ## Attributes

  - additionalChargeSummaries ([InvoiceSummaryAdditionalChargeSummary]): Summary of the total amounts of the additional charges. Defaults to: `null`.
  - customerBalance (Amount): Customer balance on this invoice. A positive amount means the customer is paying, a negative one means the customer is receiving money. Note that it must always be true that merchant_balance + customer_balance + google_balance &#x3D; 0. Defaults to: `null`.
  - googleBalance (Amount): Google balance on this invoice. A positive amount means Google is paying, a negative one means Google is receiving money. Note that it must always be true that merchant_balance + customer_balance + google_balance &#x3D; 0. Defaults to: `null`.
  - merchantBalance (Amount): Merchant balance on this invoice. A positive amount means the merchant is paying, a negative one means the merchant is receiving money. Note that it must always be true that merchant_balance + customer_balance + google_balance &#x3D; 0. Defaults to: `null`.
  - productTotal (Amount): Total price for the product. Defaults to: `null`.
  - promotionSummaries ([Promotion]): Summary for each promotion. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalChargeSummaries =>
            list(GoogleApi.Content.V2.Model.InvoiceSummaryAdditionalChargeSummary.t()),
          :customerBalance => GoogleApi.Content.V2.Model.Amount.t(),
          :googleBalance => GoogleApi.Content.V2.Model.Amount.t(),
          :merchantBalance => GoogleApi.Content.V2.Model.Amount.t(),
          :productTotal => GoogleApi.Content.V2.Model.Amount.t(),
          :promotionSummaries => list(GoogleApi.Content.V2.Model.Promotion.t())
        }

  field(
    :additionalChargeSummaries,
    as: GoogleApi.Content.V2.Model.InvoiceSummaryAdditionalChargeSummary,
    type: :list
  )

  field(:customerBalance, as: GoogleApi.Content.V2.Model.Amount)
  field(:googleBalance, as: GoogleApi.Content.V2.Model.Amount)
  field(:merchantBalance, as: GoogleApi.Content.V2.Model.Amount)
  field(:productTotal, as: GoogleApi.Content.V2.Model.Amount)
  field(:promotionSummaries, as: GoogleApi.Content.V2.Model.Promotion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.InvoiceSummary do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.InvoiceSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.InvoiceSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end