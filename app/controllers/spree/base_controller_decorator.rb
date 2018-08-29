require 'request_store'

Spree::BaseController.class_eval do
  before_action :set_current_info

  def set_current_info
    RequestStore.store[:current_user] = spree_current_user || current_spree_user
    RequestStore.store[:current_currency] = current_currency
    RequestStore.store[:current_store] = current_store
  end
end