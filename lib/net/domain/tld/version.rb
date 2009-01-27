module Net  # :nodoc:
  module Domain  # :nodoc:
    module TLD
      module Version
        MAJOR = 0
        MINOR = 0
        TINY  = 1

        STRING = [MAJOR, MINOR, TINY].join('.')
        NAME   = [MAJOR, MINOR, TINY].join('_')

        class << self
          def to_version
            STRING
          end
          def to_name
            NAME
          end
        end
      end

    end
  end
end