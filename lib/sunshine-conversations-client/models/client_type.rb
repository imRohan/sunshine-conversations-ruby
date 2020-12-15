=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.4.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class ClientType
    LINE = "line".freeze
    MAILGUN = "mailgun".freeze
    MESSAGEBIRD = "messagebird".freeze
    MESSENGER = "messenger".freeze
    SDK = "sdk".freeze
    TELEGRAM = "telegram".freeze
    TWILIO = "twilio".freeze
    TWITTER = "twitter".freeze
    VIBER = "viber".freeze
    WECHAT = "wechat".freeze
    WHATSAPP = "whatsapp".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ClientType.constants.select { |c| ClientType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ClientType" if constantValues.empty?
      value
    end
  end
end
