# frozen_string_literal: true

require 'spree/testing_support/factory_bot'
Spree::TestingSupport::FactoryBot.when_cherry_picked do
  Spree::TestingSupport::FactoryBot.deprecate_cherry_picking
end

FactoryBot.define do
  factory :calculator, aliases: [:flat_rate_calculator], class: 'Spree::Calculator::FlatRate' do
    preferred_amount { 10.0 }
  end

  factory :no_amount_calculator, class: 'Spree::Calculator::FlatRate' do
    preferred_amount { 0 }
  end

  factory :default_tax_calculator, class: 'Spree::Calculator::DefaultTax' do
  end

  factory :flat_fee_calculator, class: 'Spree::Calculator::FlatFee' do
  end

  factory :shipping_calculator, class: 'Spree::Calculator::Shipping::FlatRate' do
    preferred_amount { 10.0 }
  end

  factory :shipping_no_amount_calculator, class: 'Spree::Calculator::Shipping::FlatRate' do
    preferred_amount { 0 }
  end

  factory :percent_on_item_calculator, class: 'Spree::Calculator::PercentOnLineItem' do
    preferred_percent { 10 }
  end
end
