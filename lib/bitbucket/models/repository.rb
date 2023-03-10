=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Bitbucket
  # A Bitbucket repository.
  class Repository
    attr_accessor :links

    # The repository's immutable id. This can be used as a substitute for the slug segment in URLs. Doing this guarantees your URLs will survive renaming of the repository by its owner, or even transfer of the repository to a different user.
    attr_accessor :uuid

    # The concatenation of the repository owner's username and the slugified name, e.g. \"evzijst/interruptingcow\". This is the same string used in Bitbucket URLs.
    attr_accessor :full_name

    attr_accessor :is_private

    attr_accessor :parent

    attr_accessor :scm

    attr_accessor :owner

    attr_accessor :name

    attr_accessor :description

    attr_accessor :created_on

    attr_accessor :updated_on

    attr_accessor :size

    attr_accessor :language

    attr_accessor :has_issues

    attr_accessor :has_wiki

    #  Controls the rules for forking this repository.  * **allow_forks**: unrestricted forking * **no_public_forks**: restrict forking to private forks (forks cannot   be made public later) * **no_forks**: deny all forking 
    attr_accessor :fork_policy

    attr_accessor :project

    attr_accessor :mainbranch

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'links',
        :'uuid' => :'uuid',
        :'full_name' => :'full_name',
        :'is_private' => :'is_private',
        :'parent' => :'parent',
        :'scm' => :'scm',
        :'owner' => :'owner',
        :'name' => :'name',
        :'description' => :'description',
        :'created_on' => :'created_on',
        :'updated_on' => :'updated_on',
        :'size' => :'size',
        :'language' => :'language',
        :'has_issues' => :'has_issues',
        :'has_wiki' => :'has_wiki',
        :'fork_policy' => :'fork_policy',
        :'project' => :'project',
        :'mainbranch' => :'mainbranch'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'links' => :'RepositoryLinks',
        :'uuid' => :'String',
        :'full_name' => :'String',
        :'is_private' => :'Boolean',
        :'parent' => :'Repository',
        :'scm' => :'String',
        :'owner' => :'Account',
        :'name' => :'String',
        :'description' => :'String',
        :'created_on' => :'Time',
        :'updated_on' => :'Time',
        :'size' => :'Integer',
        :'language' => :'String',
        :'has_issues' => :'Boolean',
        :'has_wiki' => :'Boolean',
        :'fork_policy' => :'String',
        :'project' => :'Project',
        :'mainbranch' => :'Branch'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Bitbucket::Repository` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Bitbucket::Repository`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'links')
        self.links = attributes[:'links']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.key?(:'is_private')
        self.is_private = attributes[:'is_private']
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'scm')
        self.scm = attributes[:'scm']
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'has_issues')
        self.has_issues = attributes[:'has_issues']
      end

      if attributes.key?(:'has_wiki')
        self.has_wiki = attributes[:'has_wiki']
      end

      if attributes.key?(:'fork_policy')
        self.fork_policy = attributes[:'fork_policy']
      end

      if attributes.key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.key?(:'mainbranch')
        self.mainbranch = attributes[:'mainbranch']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      scm_validator = EnumAttributeValidator.new('String', ["git"])
      return false unless scm_validator.valid?(@scm)
      fork_policy_validator = EnumAttributeValidator.new('String', ["allow_forks", "no_public_forks", "no_forks"])
      return false unless fork_policy_validator.valid?(@fork_policy)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scm Object to be assigned
    def scm=(scm)
      validator = EnumAttributeValidator.new('String', ["git"])
      unless validator.valid?(scm)
        fail ArgumentError, "invalid value for \"scm\", must be one of #{validator.allowable_values}."
      end
      @scm = scm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fork_policy Object to be assigned
    def fork_policy=(fork_policy)
      validator = EnumAttributeValidator.new('String', ["allow_forks", "no_public_forks", "no_forks"])
      unless validator.valid?(fork_policy)
        fail ArgumentError, "invalid value for \"fork_policy\", must be one of #{validator.allowable_values}."
      end
      @fork_policy = fork_policy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          uuid == o.uuid &&
          full_name == o.full_name &&
          is_private == o.is_private &&
          parent == o.parent &&
          scm == o.scm &&
          owner == o.owner &&
          name == o.name &&
          description == o.description &&
          created_on == o.created_on &&
          updated_on == o.updated_on &&
          size == o.size &&
          language == o.language &&
          has_issues == o.has_issues &&
          has_wiki == o.has_wiki &&
          fork_policy == o.fork_policy &&
          project == o.project &&
          mainbranch == o.mainbranch
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [links, uuid, full_name, is_private, parent, scm, owner, name, description, created_on, updated_on, size, language, has_issues, has_wiki, fork_policy, project, mainbranch].hash
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
