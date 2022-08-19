=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0-SNAPSHOT

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
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["repo:fork", "pullrequest:fulfilled", "project:updated", "pullrequest:rejected", "repo:push", "pullrequest:comment_deleted", "repo:transfer", "pullrequest:comment_updated", "repo:commit_status_updated", "issue:updated", "issue:comment_created", "repo:commit_comment_created", "pullrequest:created", "repo:commit_status_created", "repo:updated", "pullrequest:changes_request_created", "issue:created", "pullrequest:updated", "pullrequest:unapproved", "repo:imported", "pullrequest:approved", "pullrequest:changes_request_removed", "repo:deleted", "pullrequest:comment_created", "repo:created"])
      # validator.allowable_values.each do |value|
      #   expect { instance.events = value }.not_to raise_error
      # end
    end
  end

end