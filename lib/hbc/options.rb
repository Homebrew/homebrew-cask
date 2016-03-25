module Hbc::Options
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

    def verbose
      @verbose ||= false
    end

    def verbose=(_verbose)
      @verbose = _verbose
    end

    def cleanup_outdated
      @cleanup_outdated ||= false
    end

    def cleanup_outdated=(_cleanup_outdated)
      @cleanup_outdated = _cleanup_outdated
    end

    def help
      @help ||= false
    end

    def help=(_help)
      @help = _help
    end
  end
end
