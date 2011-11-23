require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class JustinTV < OmniAuth::Strategies::OAuth
      option :name, 'justintv'
      
      option :client_options, {
        :site => 'http://api.justin.tv',
        :request_token_path => '/oauth/request_token',
        :access_token_path => '/oauth/access_token',
        :authorize_url => 'http://api.justin.tv/oauth/authorize'
      }
    end
  end
end

OmniAuth.config.add_camelization 'justintv', 'JustinTV'