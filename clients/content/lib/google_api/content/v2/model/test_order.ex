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

defmodule GoogleApi.Content.V2.Model.TestOrder do
  @moduledoc """


  ## Attributes

  - customer (TestOrderCustomer): The details of the customer who placed the order. Defaults to: `null`.
  - enableOrderinvoices (boolean()): Whether the orderinvoices service should support this order. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;content#testOrder\&quot;. Defaults to: `null`.
  - lineItems ([TestOrderLineItem]): Line items that are ordered. At least one line item must be provided. Defaults to: `null`.
  - notificationMode (String.t): Determines if test order must be pulled by merchant or pushed to merchant via push integration. Defaults to: `null`.
  - paymentMethod (TestOrderPaymentMethod): The details of the payment method. Defaults to: `null`.
  - predefinedDeliveryAddress (String.t): Identifier of one of the predefined delivery addresses for the delivery. Defaults to: `null`.
  - promotions ([OrderPromotion]): The details of the merchant provided promotions applied to the order. More details about the program are here. Defaults to: `null`.
  - shippingCost (Price): The total cost of shipping for all items. Defaults to: `null`.
  - shippingCostTax (Price): The tax for the total shipping cost. Defaults to: `null`.
  - shippingOption (String.t): The requested shipping option. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customer => GoogleApi.Content.V2.Model.TestOrderCustomer.t(),
          :enableOrderinvoices => any(),
          :kind => any(),
          :lineItems => list(GoogleApi.Content.V2.Model.TestOrderLineItem.t()),
          :notificationMode => any(),
          :paymentMethod => GoogleApi.Content.V2.Model.TestOrderPaymentMethod.t(),
          :predefinedDeliveryAddress => any(),
          :promotions => list(GoogleApi.Content.V2.Model.OrderPromotion.t()),
          :shippingCost => GoogleApi.Content.V2.Model.Price.t(),
          :shippingCostTax => GoogleApi.Content.V2.Model.Price.t(),
          :shippingOption => any()
        }

  field(:customer, as: GoogleApi.Content.V2.Model.TestOrderCustomer)
  field(:enableOrderinvoices)
  field(:kind)
  field(:lineItems, as: GoogleApi.Content.V2.Model.TestOrderLineItem, type: :list)
  field(:notificationMode)
  field(:paymentMethod, as: GoogleApi.Content.V2.Model.TestOrderPaymentMethod)
  field(:predefinedDeliveryAddress)
  field(:promotions, as: GoogleApi.Content.V2.Model.OrderPromotion, type: :list)
  field(:shippingCost, as: GoogleApi.Content.V2.Model.Price)
  field(:shippingCostTax, as: GoogleApi.Content.V2.Model.Price)
  field(:shippingOption)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.TestOrder do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.TestOrder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.TestOrder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
