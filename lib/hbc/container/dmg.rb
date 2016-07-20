require "tempfile"

class Hbc::Container::Dmg < Hbc::Container::Base
  def self.me?(criteria)
    !criteria.command.run("/usr/bin/hdiutil",
                          # realpath is a failsafe against unusual filenames
                          args:         ["imageinfo", Pathname.new(criteria.path).realpath],
                          print_stderr: false).stdout.empty?
  end

  attr_reader :mounts
  def initialize(*args)
    super(*args)
    @mounts = []
  end

  def extract
    mount!
    assert_mounts_found
    @mounts.each do |mount|
      Tempfile.open(["", ".bom"]) do |bomfile|
        bomfile.close

        Tempfile.open(["", ".list"]) do |filelist|
          filelist.write(bom_filelist_from_path(mount))
          filelist.close

          @command.run("/usr/bin/mkbom", args: ["-s", "-i", filelist.path, "--", bomfile.path])
          @command.run("/usr/bin/ditto", args: ["--bom", bomfile.path, "--", mount, @cask.staged_path])
        end
      end
    end
  ensure
    eject!
  end

  def mount!
    plist = @command.run("/usr/bin/hdiutil",
                         # realpath is a failsafe against unusual filenames
                         args:  %w[mount -plist -nobrowse -readonly -noidme -mountrandom /tmp] + [Pathname.new(@path).realpath],
                         input: %w[y])
                    .plist
    @mounts = mounts_from_plist(plist)
  end

  def eject!
    @mounts.each do |mount|
      # realpath is a failsafe against unusual filenames
      mountpath = Pathname.new(mount).realpath
      next unless mountpath.exist?

      begin
        tries ||= 2
        @command.run("/usr/sbin/diskutil",
                     args:         ["eject", mountpath],
                     print_stderr: false)

        raise Hbc::CaskError, "Failed to eject #{mountpath}" if mountpath.exist?
      rescue Hbc::CaskError => e
        raise e if (tries -= 1).zero?
        sleep 1
        retry
      end
    end
  end

  private

  def bom_filelist_from_path(mount)
    mountpath = Pathname.new(mount).realpath

    paths = Dir.glob(mountpath.join("**", "*"), File::FNM_DOTMATCH)
               .map { |path| Pathname.new(path).relative_path_from(mountpath) }

    paths = paths.reject { |path|
      path = mountpath.join(path.sub(%r{/.*}, ""))

      # unnecessary DMG metadata
      %w[
        .background
        .com.apple.timemachine.donotpresent
        .DocumentRevisions-V100
        .DS_Store
        .fseventsd
        .Spotlight-V100
        .TemporaryItems
        .Trashes
        .VolumeIcon.icns
      ].include?(path.basename.to_s) ||

        # symlinks to system directories (commonly to /Applications)
        (path.symlink? &&
         Hbc::MacOS::SYSTEM_DIRS.include?(Pathname.new(File.readlink(path))))
    }

    paths.map(&:to_s)
         .map { |path| path.prepend(path == "." ? "" : "./").concat("\n") }
         .join
  end

  def mounts_from_plist(plist)
    return [] unless plist.respond_to?(:fetch)
    plist.fetch("system-entities", []).map { |entity|
      entity["mount-point"]
    }.compact
  end

  def assert_mounts_found
    raise Hbc::CaskError, "No mounts found in '#{@path}'; perhaps it is a bad DMG?" if @mounts.empty?
  end
end
