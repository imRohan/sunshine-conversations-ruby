=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.22

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Client
    # An identifier for the client. Must be globally unique.
    attr_accessor :id

    # The client status. Indicates if the client is able to receive messages or not. See [**ClientStatusEnum**](Enums.md#ClientStatusEnum) for available values.
    attr_accessor :status

    # The ID of the user on an external channel. For example, the user's phone number for Twilio, or their page-scoped user ID for Facebook Messenger. Applies only to non-SDK clients.
    attr_accessor :externalId

    # Deprecated - use the status property instead.
    attr_accessor :active

    # The date time the client was last seen.
    attr_accessor :lastSeen

    # The client's platform. See [**IntegrationTypeEnum**](Enums.md#IntegrationTypeEnum) for available values.
    attr_accessor :platform

    # The ID of the integration that the client was created for.
    attr_accessor :integrationId

    # The GCM or APN token to be used for sending push notifications to the device. Applies to only *android* and *ios* clients. 
    attr_accessor :pushNotificationToken

    # A reserved string field for reporting the app version running on the device.
    attr_accessor :appVersion

    # The client's display name.
    attr_accessor :displayName

    attr_accessor :info

    # An Object with raw properties that vary for each client platform. All keys are optional and not guaranteed to be available.
    attr_accessor :raw


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'status' => :'status',
        :'externalId' => :'externalId',
        :'active' => :'active',
        :'lastSeen' => :'lastSeen',
        :'platform' => :'platform',
        :'integrationId' => :'integrationId',
        :'pushNotificationToken' => :'pushNotificationToken',
        :'appVersion' => :'appVersion',
        :'displayName' => :'displayName',
        :'info' => :'info',
        :'raw' => :'raw'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'status' => :'String',
        :'externalId' => :'String',
        :'active' => :'BOOLEAN',
        :'lastSeen' => :'String',
        :'platform' => :'String',
        :'integrationId' => :'String',
        :'pushNotificationToken' => :'String',
        :'appVersion' => :'String',
        :'displayName' => :'String',
        :'info' => :'ClientInfo',
        :'raw' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'externalId')
        self.externalId = attributes[:'externalId']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'lastSeen')
        self.lastSeen = attributes[:'lastSeen']
      end

      if attributes.has_key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.has_key?(:'integrationId')
        self.integrationId = attributes[:'integrationId']
      end

      if attributes.has_key?(:'pushNotificationToken')
        self.pushNotificationToken = attributes[:'pushNotificationToken']
      end

      if attributes.has_key?(:'appVersion')
        self.appVersion = attributes[:'appVersion']
      end

      if attributes.has_key?(:'displayName')
        self.displayName = attributes[:'displayName']
      end

      if attributes.has_key?(:'info')
        self.info = attributes[:'info']
      end

      if attributes.has_key?(:'raw')
        self.raw = attributes[:'raw']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @platform.nil?
        invalid_properties.push("invalid value for 'platform', platform cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @platform.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          status == o.status &&
          externalId == o.externalId &&
          active == o.active &&
          lastSeen == o.lastSeen &&
          platform == o.platform &&
          integrationId == o.integrationId &&
          pushNotificationToken == o.pushNotificationToken &&
          appVersion == o.appVersion &&
          displayName == o.displayName &&
          info == o.info &&
          raw == o.raw
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, status, externalId, active, lastSeen, platform, integrationId, pushNotificationToken, appVersion, displayName, info, raw].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SmoochApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
