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

# Unit tests for Bitbucket::UsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @api_instance = Bitbucket::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@api_instance).to be_instance_of(Bitbucket::UsersApi)
    end
  end

  # unit tests for user_emails_email_get
  # Get an email address for current user
  # Returns details about a specific one of the authenticated user&#39;s email addresses.  Details describe whether the address has been confirmed by the user and whether it is the user&#39;s primary address or not.
  # @param email Email address of the user.
  # @param [Hash] opts the optional parameters
  # @return [Error]
  describe 'user_emails_email_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_emails_get
  # List email addresses for current user
  # Returns all the authenticated user&#39;s email addresses. Both confirmed and unconfirmed.
  # @param [Hash] opts the optional parameters
  # @return [Error]
  describe 'user_emails_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_get
  # Get current user
  # Returns the currently logged in user.
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'user_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_selected_user_get
  # Get a user
  # Gets the public information associated with a user account.  If the user&#39;s profile is private, &#x60;location&#x60;, &#x60;website&#x60; and &#x60;created_on&#x60; elements are omitted.  Note that the user object returned by this operation is changing significantly, due to privacy changes. See the [announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-changes-gdpr/#changes-to-bitbucket-user-objects) for details.
  # @param selected_user This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. 
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'users_selected_user_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
