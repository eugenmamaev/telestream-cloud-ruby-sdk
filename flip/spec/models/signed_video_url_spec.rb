=begin
#Flip API

#Description

OpenAPI spec version: 3.1.0
Contact: cloudsupport@telestream.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TelestreamCloud::Flip::SignedVideoUrl
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignedVideoUrl' do
  before do
    # run before each test
    @instance = TelestreamCloud::Flip::SignedVideoUrl.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignedVideoUrl' do
    it 'should create an instance of SignedVideoUrl' do
      expect(@instance).to be_instance_of(TelestreamCloud::Flip::SignedVideoUrl)
    end
  end
  describe 'test attribute "signed_url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

