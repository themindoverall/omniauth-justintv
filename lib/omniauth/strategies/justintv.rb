require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class JustinTV < OmniAuth::Strategies::OAuth
      option :name, 'justintv'
      
      option :client_options, {
        :site => 'http://api.justin.tv',
        :request_token_path => '/oauth/request_token',
        :access_token_path => '/oauth/access_token',
        :authorize_path => '/oauth/authorize',
        :http_method => :get
      }
      
      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get("/user/show/justin.json").body)
      end
    end
  end
end

OmniAuth.config.add_camelization 'justintv', 'JustinTV'