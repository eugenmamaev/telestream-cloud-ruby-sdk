=begin
#Flip API

#Description

OpenAPI spec version: 3.1.0
Contact: cloudsupport@telestream.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module TelestreamCloud::Flip

  class CloudNotificationSettingsEvents
    # If set to `true`, a notification will be sent after an encoding becomes complete.
    attr_accessor :encoding_completed

    # If set to `true`, a notification will be sent after an encoding's progess changes.
    attr_accessor :encoding_progress

    # If set to `true`, a notification will be sent after a video is created.
    attr_accessor :video_created

    # If set to `true`, a notification will be sent after a video is encoded.
    attr_accessor :video_encoded


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'encoding_completed' => :'encoding_completed',
        :'encoding_progress' => :'encoding_progress',
        :'video_created' => :'video_created',
        :'video_encoded' => :'video_encoded'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'encoding_completed' => :'BOOLEAN',
        :'encoding_progress' => :'BOOLEAN',
        :'video_created' => :'BOOLEAN',
        :'video_encoded' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'encoding_completed')
        self.encoding_completed = attributes[:'encoding_completed']
      end

      if attributes.has_key?(:'encoding_progress')
        self.encoding_progress = attributes[:'encoding_progress']
      end

      if attributes.has_key?(:'video_created')
        self.video_created = attributes[:'video_created']
      end

      if attributes.has_key?(:'video_encoded')
        self.video_encoded = attributes[:'video_encoded']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @encoding_completed.nil?
        invalid_properties.push("invalid value for 'encoding_completed', encoding_completed cannot be nil.")
      end

      if @encoding_progress.nil?
        invalid_properties.push("invalid value for 'encoding_progress', encoding_progress cannot be nil.")
      end

      if @video_created.nil?
        invalid_properties.push("invalid value for 'video_created', video_created cannot be nil.")
      end

      if @video_encoded.nil?
        invalid_properties.push("invalid value for 'video_encoded', video_encoded cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @encoding_completed.nil?
      return false if @encoding_progress.nil?
      return false if @video_created.nil?
      return false if @video_encoded.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          encoding_completed == o.encoding_completed &&
          encoding_progress == o.encoding_progress &&
          video_created == o.video_created &&
          video_encoded == o.video_encoded
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [encoding_completed, encoding_progress, video_created, video_encoded].hash
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
        temp_model = TelestreamCloud::Flip.const_get(type).new
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
