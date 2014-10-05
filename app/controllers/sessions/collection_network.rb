# Copyright (C) 2012-2014 Zammad Foundation, http://zammad-foundation.org/

module ExtraCollection
  def session( collections, assets, user )

    collections[ Network.to_app_model ]                 = Network.all
    collections[ Network::Category.to_app_model ]       = Network::Category.all
    collections[ Network::Category::Type.to_app_model ] = Network::Category::Type.all
    collections[ Network::Privacy.to_app_model ]        = Network::Privacy.all

  end

  module_function :session
end