# -*- coding: utf-8 -*-

require 'net/domain/tld/known_domains'

module Net
  module Domain
    module TLD
      class << self
        def list(group = nil)
          if group
            domains = KNOWN_DOMAINS.keys.select { |name| KNOWN_DOMAINS[name] == group }
            domains.empty? ? nil : domains.sort
          else
            KNOWN_DOMAINS.keys.sort
          end
        end
        
        def exists?(name)
          raise ArgumentError, 'name must be a String' unless name.instance_of? String
          KNOWN_DOMAINS[name.downcase] ? true : false
        end

        def lookup(name)
          raise ArgumentError, 'name must be a String' unless name.instance_of? String
          key = name.downcase
          group = KNOWN_DOMAINS[key]
          return nil if group.nil?

          DomainProfile.new(key, group)
        end

      end

      class DomainProfile
        attr_reader :name, :group
        def initialize(name, group)
          @name = name
          @group = group
        end
      end
      
    end
  end
end
