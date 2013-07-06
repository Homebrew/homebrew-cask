require 'digest'
require 'cask/download'

class Cask::Installer
  class << self
    def install(cask, force=false)
      if cask.installed? && !force
        raise CaskAlreadyInstalledError.new(cask)
      end

      download = Cask::Download.new(cask)
      downloaded_path = download.perform

      FileUtils.mkdir_p cask.destination_path

      _with_extracted_mountpoints(downloaded_path) do |mountpoint|
        `ditto '#{mountpoint}' '#{cask.destination_path}' 2>/dev/null`
      end

      ohai "Success! #{cask} installed to #{cask.destination_path}"

      unless cask.caveats.empty?
        ohai 'Caveats', cask.caveats 
      end
    end

    def uninstall(cask)
      cask.destination_path.rmtree
    end

    def _with_extracted_mountpoints(path)
      if _dmg?(path)
        File.open(path) do |dmg|
          xml_str = `hdiutil mount -plist -nobrowse -readonly -noidme -mountrandom /tmp '#{dmg.path}'`
          hdiutil_info = Plist::parse_xml(xml_str)
          raise Exception.new("No disk entities returned by mount at #{dmg.path}") unless hdiutil_info.has_key?("system-entities")
          mounts = hdiutil_info["system-entities"].collect { |entity|
            entity["mount-point"]
          }.compact
          begin
            mounts.each do |mountpoint|
              yield Pathname.new(mountpoint)
            end
          ensure
            mounts.each do |mountpoint|
              `hdiutil eject '#{mountpoint}'`
            end
          end
        end
      elsif _zip?(path)
        destdir = "/tmp/brewcask_#{@title}_extracted"
        `mkdir -p '#{destdir}'`
        `unzip -d '#{destdir}' '#{path}' -x '__MACOSX/*'`
        begin
          yield destdir
        ensure
          `rm -rf '#{destdir}'`
        end
      elsif _tar?(path)
        destdir = "/tmp/brewcask_#{@title}_extracted"
        `mkdir -p '#{destdir}'`
        `tar jxf '#{path}' -C '#{destdir}'`
        begin
          yield destdir
        ensure
          `rm -rf '#{destdir}'`
        end
      else
        raise "uh oh, could not identify type of #{path}"
      end
    end

    def _dmg?(path)
      output = `hdiutil imageinfo '#{path}' 2>/dev/null`
      output != ''
    end

    def _zip?(path)
      output = `file -Izb '#{path}'`
      output.chomp.include? 'compressed-encoding=application/zip; charset=binary; charset=binary'
    end

    def _tar?(path)
      _tar_bzip?(path) || _tar_gzip?(path)
    end

    def _tar_bzip?(path)
      output = `file -Izb '#{path}'`
      output.chomp == 'application/x-tar; charset=binary compressed-encoding=application/x-bzip2; charset=binary; charset=binary'
    end

    def _tar_gzip?(path)
      output = `file -Izb '#{path}'`
      output.chomp == 'application/x-tar; charset=binary compressed-encoding=application/x-gzip; charset=binary; charset=binary'
    end
  end
end
