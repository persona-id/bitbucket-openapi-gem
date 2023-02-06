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

# Unit tests for Bitbucket::PipelineCompletedError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Bitbucket::PipelineCompletedError do
  let(:instance) { Bitbucket::PipelineCompletedError.new }

  describe 'test an instance of PipelineCompletedError' do
    it 'should create an instance of PipelineCompletedError' do
      expect(instance).to be_instance_of(Bitbucket::PipelineCompletedError)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ERROR"])
      # validator.allowable_values.each do |value|
      #   expect { instance.name = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
