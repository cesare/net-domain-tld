# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__),  'spec_helper.rb')

describe Net::Domain::TLD::DomainProfile, 'when initialized required arguments,' do 
  before(:each) do 
    @profile = Net::Domain::TLD::DomainProfile.new('name', :group)
  end

  it 'should store a name attribute as a string' do
    @profile.name.should be_instance_of String
    @profile.name.should == 'name'
  end

  it 'should store a group name attribute as symbol' do
    @profile.group.should be_instance_of Symbol
    @profile.group.should == :group
  end
end

