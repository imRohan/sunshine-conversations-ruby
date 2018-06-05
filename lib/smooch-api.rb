=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

# Common files
require 'smooch-api/api_client'
require 'smooch-api/api_error'
require 'smooch-api/version'
require 'smooch-api/configuration'

# Models
require 'smooch-api/models/action'
require 'smooch-api/models/app'
require 'smooch-api/models/app_create'
require 'smooch-api/models/app_response'
require 'smooch-api/models/app_settings'
require 'smooch-api/models/app_update'
require 'smooch-api/models/app_user'
require 'smooch-api/models/app_user_business_systems_response'
require 'smooch-api/models/app_user_channels_response'
require 'smooch-api/models/app_user_link'
require 'smooch-api/models/app_user_pre_create'
require 'smooch-api/models/app_user_response'
require 'smooch-api/models/app_user_update'
require 'smooch-api/models/attachment_remove'
require 'smooch-api/models/attachment_response'
require 'smooch-api/models/auth_code_response'
require 'smooch-api/models/business_system_item'
require 'smooch-api/models/channel_entity_item'
require 'smooch-api/models/client'
require 'smooch-api/models/client_info'
require 'smooch-api/models/confirmation'
require 'smooch-api/models/conversation'
require 'smooch-api/models/destination'
require 'smooch-api/models/display_settings'
require 'smooch-api/models/get_messages_response'
require 'smooch-api/models/integration'
require 'smooch-api/models/integration_create'
require 'smooch-api/models/integration_response'
require 'smooch-api/models/integration_update'
require 'smooch-api/models/jwt_response'
require 'smooch-api/models/link_request_response'
require 'smooch-api/models/link_request_response_link_requests'
require 'smooch-api/models/list_apps_response'
require 'smooch-api/models/list_integrations_response'
require 'smooch-api/models/list_secret_keys_response'
require 'smooch-api/models/list_service_accounts_response'
require 'smooch-api/models/list_webhooks_response'
require 'smooch-api/models/menu'
require 'smooch-api/models/menu_item'
require 'smooch-api/models/menu_response'
require 'smooch-api/models/message'
require 'smooch-api/models/message_item'
require 'smooch-api/models/message_post'
require 'smooch-api/models/message_response'
require 'smooch-api/models/secret_key'
require 'smooch-api/models/secret_key_create'
require 'smooch-api/models/secret_key_response'
require 'smooch-api/models/service_account'
require 'smooch-api/models/service_account_create'
require 'smooch-api/models/service_account_response'
require 'smooch-api/models/service_account_update'
require 'smooch-api/models/source'
require 'smooch-api/models/typing_activity_trigger'
require 'smooch-api/models/webhook'
require 'smooch-api/models/webhook_create'
require 'smooch-api/models/webhook_response'
require 'smooch-api/models/webhook_update'

# APIs
require 'smooch-api/api/app_api'
require 'smooch-api/api/app_user_api'
require 'smooch-api/api/attachments_api'
require 'smooch-api/api/conversation_api'
require 'smooch-api/api/integration_api'
require 'smooch-api/api/menu_api'
require 'smooch-api/api/service_account_api'
require 'smooch-api/api/webhook_api'

module SmoochApi
  class << self
    # Customize default settings for the SDK using block.
    #   SmoochApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
