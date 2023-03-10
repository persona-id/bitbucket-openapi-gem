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
require 'date'

# Unit tests for Bitbucket::WebhookSubscription
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Bitbucket::WebhookSubscription do
  let(:instance) { Bitbucket::WebhookSubscription.new }

  describe 'test an instance of WebhookSubscription' do
    it 'should create an instance of WebhookSubscription' do
      expect(instance).to be_instance_of(Bitbucket::WebhookSubscription)
    end
  end
  describe 'test attribute "uuid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "subject_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["repository", "workspace"])
      # validator.allowable_values.each do |value|
      #   expect { instance.subject_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "subject"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "active"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "events"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["repo:updated", "repo:transfer", "repo:created", "project:updated", "pullrequest:changes_request_created", "pullrequest:changes_request_removed", "issue:comment_created", "pullrequest:comment_updated", "repo:fork", "issue:created", "pullrequest:created", "repo:imported", "repo:commit_status_updated", "pullrequest:fulfilled", "pullrequest:comment_created", "pullrequest:approved", "pullrequest:unapproved", "issue:updated", "repo:commit_comment_created", "repo:commit_status_created", "repo:push", "pullrequest:comment_deleted", "repo:deleted", "pullrequest:updated", "pullrequest:rejected"])
      # validator.allowable_values.each do |value|
      #   expect { instance.events = value }.not_to raise_error
      # end
    end
  end

end
