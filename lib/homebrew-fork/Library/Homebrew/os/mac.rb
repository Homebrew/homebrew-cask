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

    def cat
      version.to_sym
    end

    def locate tool
      # Don't call tools (cc, make, strip, etc.) directly!
      # Give the name of the binary you look for as a string to this method
      # in order to get the full path back as a Pathname.
      (@locate ||= {}).fetch(tool) do |key|
        @locate[key] = if File.executable?(path = "/usr/bin/#{tool}")
          Pathname.new path
        # Homebrew GCCs most frequently; much faster to check this before xcrun
        elsif File.executable?(path = "#{HOMEBREW_PREFIX}/bin/#{tool}")
          Pathname.new path
        else
          path = `/usr/bin/xcrun -no-cache -find #{tool} 2>/dev/null`.chomp
          Pathname.new(path) if File.executable?(path)
        end
      end
    end

    def prefer_64_bit?
      Hardware::CPU.is_64_bit? and version > :leopard
    end

    def app_with_bundle_id(*ids)
      path = mdfind(*ids).first
      Pathname.new(path) unless path.nil? or path.empty?
    end

    def mdfind(*ids)
      (@mdfind ||= {}).fetch(ids) do
        @mdfind[ids] = Utils.popen_read("/usr/bin/mdfind", mdfind_query(*ids)).split("\n")
      end
    end

    def pkgutil_info(id)
      (@pkginfo ||= {}).fetch(id) do |key|
        @pkginfo[key] = Utils.popen_read("/usr/sbin/pkgutil", "--pkg-info", key).strip
      end
    end

    def mdfind_query(*ids)
      ids.map! { |id| "kMDItemCFBundleIdentifier == #{id}" }.join(" || ")
    end
  end
end
