require 'request_store'

Spree::Store.class_eval do
  def self.current_user
    RequestStore.store[:current_user]
  end

  def self.current_currency
    RequestStore.store[:current_currency] || Spree::Config[:currency]
  end

  def self.current_store
    RequestStore.store[:current_store] || Spree::Store.current
  end
end