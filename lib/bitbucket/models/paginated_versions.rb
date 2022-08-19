=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module Bitbucket
  # A paginated list of issue tracker versions.
  class PaginatedVersions
    # Total number of objects in the response. This is an optional element that is not provided in all responses, as it can be expensive to compute.
    attr_accessor :size

    # Page number of the current results. This is an optional element that is not provided in all responses.
    attr_accessor :page

    # Current number of objects on the existing page. The default value is 10 with 100 being the maximum allowed value. Individual APIs may enforce different values.
    attr_accessor :pagelen

    # Link to the next page if it exists. The last page of a collection does not have this value. Use this link to navigate the result set and refrain from constructing your own URLs.
    attr_accessor :_next

    # Link to previous page if it exists. A collections first page does not have this value. This is an optional element that is not provided in all responses. Some result sets strictly support forward navigation and never provide previous links. Clients must anticipate that backwards navigation is not always available. Use this link to navigate the result set and refrain from constructing your own URLs.
    attr_accessor :previous

    attr_accessor :values

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'size' => :'size',
        :'page' => :'page',
        :'pagelen' => :'pagelen',
        :'_next' => :'next',
        :'previous' => :'previous',
        :'values' => :'values'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'size' => :'Integer',
        :'page' => :'Integer',
        :'pagelen' => :'Integer',
        :'_next' => :'String',
        :'previous' => :'String',
        :'values' => :'Array<Version>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Bitbucket::PaginatedVersions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Bitbucket::PaginatedVersions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'pagelen')
        self.pagelen = attributes[:'pagelen']
      end

      if attributes.key?(:'_next')
        self._next = attributes[:'_next']
      end

      if attributes.key?(:'previous')
        self.previous = attributes[:'previous']
      end

      if attributes.key?(:'values')
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@size.nil? && @size < 0
        invalid_properties.push('invalid value for "size", must be greater than or equal to 0.')
      end

      if !@page.nil? && @page < 1
        invalid_properties.push('invalid value for "page", must be greater than or equal to 1.')
      end

      if !@pagelen.nil? && @pagelen < 1
        invalid_properties.push('invalid value for "pagelen", must be greater than or equal to 1.')
      end

      if !@values.nil? && @values.length < 0
        invalid_properties.push('invalid value for "values", number of items must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@size.nil? && @size < 0
      return false if !@page.nil? && @page < 1
      return false if !@pagelen.nil? && @pagelen < 1
      return false if !@values.nil? && @values.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] size Value to be assigned
    def size=(size)
      if !size.nil? && size < 0
        fail ArgumentError, 'invalid value for "size", must be greater than or equal to 0.'
      end

      @size = size
    end

    # Custom attribute writer method with validation
    # @param [Object] page Value to be assigned
    def page=(page)
      if !page.nil? && page < 1
        fail ArgumentError, 'invalid value for "page", must be greater than or equal to 1.'
      end

      @page = page
    end

    # Custom attribute writer method with validation
    # @param [Object] pagelen Value to be assigned
    def pagelen=(pagelen)
      if !pagelen.nil? && pagelen < 1
        fail ArgumentError, 'invalid value for "pagelen", must be greater than or equal to 1.'
      end

      @pagelen = pagelen
    end

    # Custom attribute writer method with validation
    # @param [Object] values Value to be assigned
    def values=(values)
      if !values.nil? && values.length < 0
        fail ArgumentError, 'invalid value for "values", number of items must be greater than or equal to 0.'
      end

      @values = values
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          size == o.size &&
          page == o.page &&
          pagelen == o.pagelen &&
          _next == o._next &&
          previous == o.previous &&
          values == o.values
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [size, page, pagelen, _next, previous, values].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Bitbucket.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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