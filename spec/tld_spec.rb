# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__),  'spec_helper.rb')

describe Net::Domain::TLD  do
  describe '#exists?' do 
    it 'should return true if called with known domain names' do 
      Net::Domain::TLD.exists?('com').should == true
    end

    it 'should return false if called with unknown domain names' do 
      Net::Domain::TLD.exists?('notexist').should_not be_true
    end

    it 'should raise ArgumentError if call with nil' do 
      lambda { Net::Domain::TLD.exists?(nil) }.should raise_error(ArgumentError)
    end

    it 'should raise ArgumentError if call with non-string objects' do 
      lambda { Net::Domain::TLD.exists?(1) }.should raise_error(ArgumentError)
      lambda { Net::Domain::TLD.exists?(1.2) }.should raise_error(ArgumentError)
    end

    it 'should raise ArgumentError if call with symbols' do 
      lambda { Net::Domain::TLD.exists?(:com) }.should raise_error(ArgumentError)
    end

    it 'should raise ArgumentError if call with arrays' do 
      lambda { Net::Domain::TLD.exists?(['com', 'org']) }.should raise_error(ArgumentError)
    end

    it 'should return false if called with an empty string' do 
      Net::Domain::TLD.exists?('').should_not be_true
    end

    it 'should return true if called with known domain name but some (or all of) letters are in upper case' do 
      Net::Domain::TLD.exists?('Com').should == true
      Net::Domain::TLD.exists?('COm').should == true
      Net::Domain::TLD.exists?('CoM').should == true
      Net::Domain::TLD.exists?('cOm').should == true
      Net::Domain::TLD.exists?('cOM').should == true
      Net::Domain::TLD.exists?('coM').should == true
      Net::Domain::TLD.exists?('COM').should == true
    end

    it 'should return false if called with known domain name but with dots' do 
      Net::Domain::TLD.exists?('.com').should_not be_true
      Net::Domain::TLD.exists?('com.').should_not be_true
      Net::Domain::TLD.exists?('.com.').should_not be_true
    end

    it 'should return false if called with non-TLD names' do 
      Net::Domain::TLD.exists?('example.com').should_not be_true
      Net::Domain::TLD.exists?('test.example.com').should_not be_true
    end
  end

  describe '#lookup' do 
    it 'should return nil if called with unknown domain names' do 
      Net::Domain::TLD.lookup('nosuchdomain').should be_nil
    end
    
    it 'should return nil if called with an empty string' do 
      Net::Domain::TLD.lookup('').should be_nil
    end
    
    it 'should raise error if called with nil' do 
      lambda { Net::Domain::TLD.lookup(nil) }.should raise_error(ArgumentError)
    end

    it 'should raise error if called with non-string objects' do 
      lambda { Net::Domain::TLD.lookup(1) }.should raise_error(ArgumentError)
      lambda { Net::Domain::TLD.lookup(1.2) }.should raise_error(ArgumentError)
    end

    it 'should raise error if called with arrays' do 
      lambda { Net::Domain::TLD.lookup(['com', 'org']) }.should raise_error(ArgumentError)
    end

  end


  describe '#lookup' do
    before(:each) do 
      @result = Net::Domain::TLD.lookup('com')
    end

    it 'should return a DomainProfile object if called with known domain name' do 
      @result.should be_instance_of(Net::Domain::TLD::DomainProfile)
    end

    it 'should return a profile object with a name attribute' do 
      @result.name.should == 'com'
    end

    it 'should return a profile object with a group attribute as a symbol' do 
      @result.group.should == :generic
    end

  end

  describe '#lookup' do 
    it 'should return a DomainProfile object if called with known domain name with some letters in upper case' do 
      Net::Domain::TLD.lookup('com').name.should == 'com'
      Net::Domain::TLD.lookup('Com').name.should == 'com'
      Net::Domain::TLD.lookup('COm').name.should == 'com'
      Net::Domain::TLD.lookup('COM').name.should == 'com'
      Net::Domain::TLD.lookup('cOm').name.should == 'com'
      Net::Domain::TLD.lookup('cOM').name.should == 'com'
      Net::Domain::TLD.lookup('coM').name.should == 'com'
    end
  end
  
  describe '#list() without argument' do
    before(:all) do
      @domains= Net::Domain::TLD.list
    end

    it 'should return an array object' do
      @domains.should be_instance_of(Array)
    end
    
    it 'should return an array contains strings' do
      @domains[0].should be_instance_of(String)
    end
    
    it 'should return an array contains all known TLDs' do
      @domains.should include('com')  # in generic group
      @domains.should include('jp')   # in country code group
    end
  end
  
  describe '#list() with passing known group as an argument' do
    before(:all) do
      @domains = Net::Domain::TLD.list(:generic)
    end
    
    it 'should return an array object' do
      @domains.should be_instance_of(Array)
    end
    
    it 'should return an array contains strings' do
      @domains[0].should be_instance_of(String)
    end
    
    it 'should return an array contains members of the domain' do
      @domains.should include('com')
    end
  end
  
  describe '#list() with passing unknown groups' do
    it 'should return nil' do
      Net::Domain::TLD.list(:no_such_group).should be_nil
    end
  end
end
