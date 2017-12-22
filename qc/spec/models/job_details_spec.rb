=begin
#Qc API

#QC API

OpenAPI spec version: 1.0.0
Contact: cloudsupport@telestream.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TelestreamCloud::Qc::JobDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'JobDetails' do
  before do
    # run before each test
    @instance = TelestreamCloud::Qc::JobDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobDetails' do
    it 'should create an instance of JobDetails' do
      expect(@instance).to be_instance_of(TelestreamCloud::Qc::JobDetails)
    end
  end
  describe 'test attribute "media"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "result"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

