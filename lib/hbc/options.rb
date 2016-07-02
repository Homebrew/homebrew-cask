module Hbc::Options
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    attr_writer :no_binaries

    def no_binaries
      @no_binaries ||= false
    end

    attr_writer :debug

    def debug
      @debug ||= false
    end

    attr_writer :verbose

    def verbose
      @verbose ||= false
    end

    attr_writer :cleanup_outdated

    def cleanup_outdated
      @cleanup_outdated ||= false
    end

    attr_writer :help

    def help
      @help ||= false
    end
  end
end
