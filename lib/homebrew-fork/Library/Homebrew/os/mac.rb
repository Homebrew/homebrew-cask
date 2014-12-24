require 'hardware'
require 'os/mac/version'
require 'os/mac/xquartz'

module OS
  module Mac
    extend self

    ::MacOS = self # compatibility

    # This can be compared to numerics, strings, or symbols
    # using the standard Ruby Comparable methods.
    def version
      @version ||= Version.new(MACOS_VERSION)
    end

    def prefer_64_bit?
      Hardware::CPU.is_64_bit? and version > :leopard
    end

    def app_with_bundle_id(*ids)
      path = mdfind(*ids).first
      Pathname.new(path) unless path.nil? or path.empty?
    end

    def pkgutil_info(id)
      (@pkginfo ||= {}).fetch(id) do |key|
        @pkginfo[key] = Utils.popen_read("/usr/sbin/pkgutil", "--pkg-info", key).strip
      end
    end
  end
end
