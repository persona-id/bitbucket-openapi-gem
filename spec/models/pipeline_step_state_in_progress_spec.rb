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

# Unit tests for Bitbucket::PipelineStepStateInProgress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Bitbucket::PipelineStepStateInProgress do
  let(:instance) { Bitbucket::PipelineStepStateInProgress.new }

  describe 'test an instance of PipelineStepStateInProgress' do
    it 'should create an instance of PipelineStepStateInProgress' do
      expect(instance).to be_instance_of(Bitbucket::PipelineStepStateInProgress)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["IN_PROGRESS"])
      # validator.allowable_values.each do |value|
      #   expect { instance.name = value }.not_to raise_error
      # end
    end
  end

end
