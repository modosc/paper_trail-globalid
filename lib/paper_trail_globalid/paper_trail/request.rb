module PaperTrailGlobalid
  module PaperTrail
    module Request
      def whodunnit=(value)
        if value.is_a? ActiveRecord::Base
          super value.to_gid
        else
          super
        end
      end

      def actor
        ::GlobalID::Locator.locate(whodunnit) || whodunnit
      end
    end
  end
end
