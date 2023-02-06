=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Bitbucket::AddonApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AddonApi' do
  before do
    # run before each test
    @api_instance = Bitbucket::AddonApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddonApi' do
    it 'should create an instance of AddonApi' do
      expect(@api_instance).to be_instance_of(Bitbucket::AddonApi)
    end
  end

  # unit tests for addon_delete
  # Delete an app
  # Deletes the application for the user.  This endpoint is intended to be used by Bitbucket Connect apps and only supports JWT authentication -- that is how Bitbucket identifies the particular installation of the app. Developers with applications registered in the \&quot;Develop Apps\&quot; section of Bitbucket Marketplace need not use this endpoint as updates for those applications can be sent out via the UI of that section.  &#x60;&#x60;&#x60; $ curl -X DELETE https://api.bitbucket.org/2.0/addon \\   -H \&quot;Authorization: JWT &lt;JWT Token&gt;\&quot; &#x60;&#x60;&#x60;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_get
  # List linkers for an app
  # Gets a list of all [linkers](/cloud/bitbucket/modules/linker/) for the authenticated application.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_get
  # Get a linker for an app
  # Gets a [linker](/cloud/bitbucket/modules/linker/) specified by &#x60;linker_key&#x60; for the authenticated application.
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_values_delete
  # Delete all linker values
  # Delete all [linker](/cloud/bitbucket/modules/linker/) values for the specified linker of the authenticated application.
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_values_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_values_get
  # List linker values for a linker
  # Gets a list of all [linker](/cloud/bitbucket/modules/linker/) values for the specified linker of the authenticated application.  A linker value lets applications supply values to modify its regular expression.  The base regular expression must use a Bitbucket-specific match group &#x60;(?K)&#x60; which will be translated to &#x60;([\\w\\-]+)&#x60;. A value must match this pattern.  [Read more about linker values](/cloud/bitbucket/modules/linker/#usingthebitbucketapitosupplyvalues)
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_values_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_values_post
  # Create a linker value
  # Creates a [linker](/cloud/bitbucket/modules/linker/) value for the specified linker of authenticated application.  A linker value lets applications supply values to modify its regular expression.  The base regular expression must use a Bitbucket-specific match group &#x60;(?K)&#x60; which will be translated to &#x60;([\\w\\-]+)&#x60;. A value must match this pattern.  [Read more about linker values](/cloud/bitbucket/modules/linker/#usingthebitbucketapitosupplyvalues)
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_values_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_values_put
  # Update a linker value
  # Bulk update [linker](/cloud/bitbucket/modules/linker/) values for the specified linker of the authenticated application.  A linker value lets applications supply values to modify its regular expression.  The base regular expression must use a Bitbucket-specific match group &#x60;(?K)&#x60; which will be translated to &#x60;([\\w\\-]+)&#x60;. A value must match this pattern.  [Read more about linker values](/cloud/bitbucket/modules/linker/#usingthebitbucketapitosupplyvalues)
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_values_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_values_value_id_delete
  # Delete a linker value
  # Delete a single [linker](/cloud/bitbucket/modules/linker/) value of the authenticated application.
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param value_id The numeric ID of the linker value.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_values_value_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_linkers_linker_key_values_value_id_get
  # Get a linker value
  # Get a single [linker](/cloud/bitbucket/modules/linker/) value of the authenticated application.
  # @param linker_key The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
  # @param value_id The numeric ID of the linker value.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_linkers_linker_key_values_value_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for addon_put
  # Update an installed app
  # Updates the application installation for the user.  This endpoint is intended to be used by Bitbucket Connect apps and only supports JWT authentication -- that is how Bitbucket identifies the particular installation of the app. Developers with applications registered in the \&quot;Develop Apps\&quot; section of Bitbucket need not use this endpoint as updates for those applications can be sent out via the UI of that section.  Passing an empty body will update the installation using the existing descriptor URL.  &#x60;&#x60;&#x60; $ curl -X PUT https://api.bitbucket.org/2.0/addon \\   -H \&quot;Authorization: JWT &lt;JWT Token&gt;\&quot; \\   --header \&quot;Content-Type: application/json\&quot; \\   --data &#39;{}&#39; &#x60;&#x60;&#x60;  The new &#x60;descriptor&#x60; for the installation can be also provided in the body directly.  &#x60;&#x60;&#x60; $ curl -X PUT https://api.bitbucket.org/2.0/addon \\   -H \&quot;Authorization: JWT &lt;JWT Token&gt;\&quot; \\   --header \&quot;Content-Type: application/json\&quot; \\   --data &#39;{\&quot;descriptor\&quot;: $NEW_DESCRIPTOR}&#39; &#x60;&#x60;&#x60;  In both these modes the URL of the descriptor cannot be changed. To change the descriptor location and upgrade an installation the request must be made exclusively with a &#x60;descriptor_url&#x60;.   &#x60;&#x60;&#x60; $ curl -X PUT https://api.bitbucket.org/2.0/addon \\   -H \&quot;Authorization: JWT &lt;JWT Token&gt;\&quot; \\   --header \&quot;Content-Type: application/json\&quot; \\   --data &#39;{\&quot;descriptor_url\&quot;: $NEW_URL}&#39; &#x60;&#x60;&#x60;  The &#x60;descriptor_url&#x60; must exactly match the marketplace registration that Atlassian has for the application. Contact your Atlassian developer advocate to update this registration. Once the registration has been updated you may call this resource for each installation.  Note that the scopes of the application cannot be increased in the new descriptor nor reduced to none.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'addon_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
