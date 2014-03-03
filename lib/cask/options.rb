module Cask::Options
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def no_binaries
      @no_binaries ||= false
    end

    def no_binaries=(_no_binaries)
      @no_binaries = _no_binaries
    end

    def debug
      @debug ||= false
    end

    def debug=(_debug)
      @debug = _debug
    end

    def outdated
      @outdated ||= false
    end

    def outdated=(_outdated)
      @outdated = _outdated
    end
  end
end
