require "paper_trail_globalid/paper_trail/request"
require "paper_trail_globalid/version"
require "paper_trail_globalid/version_concern"

module PaperTrailGlobalid
  module ::PaperTrail
    module Request
      class << self
        prepend ::PaperTrailGlobalid::PaperTrail::Request
      end
    end
  end

  module ::PaperTrail
    module VersionConcern
      include ::PaperTrailGlobalid::VersionConcern
    end
  end
end
