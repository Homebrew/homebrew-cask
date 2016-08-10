require "set"
require "tempfile"

require "hbc/container/base"

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
    extract_mounts
  ensure
    eject!
  end

  def mount!
    plist = @command.run!("/usr/bin/hdiutil",
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

  def extract_mounts
    @mounts.each(&method(:extract_mount))
  end

  def extract_mount(mount)
    Tempfile.open(["", ".bom"]) do |bomfile|
      bomfile.close

      Tempfile.open(["", ".list"]) do |filelist|
        filelist.write(bom_filelist_from_path(mount))
        filelist.close

        @command.run!("/usr/bin/mkbom", args: ["-s", "-i", filelist.path, "--", bomfile.path])
        @command.run!("/usr/bin/ditto", args: ["--bom", bomfile.path, "--", mount, @cask.staged_path])
      end
    end
  end

  def bom_filelist_from_path(mount)
    Dir.chdir(mount) {
      Dir.glob("**/*", File::FNM_DOTMATCH).map { |path|
        next if skip_path?(Pathname(path))
        path == "." ? path : path.prepend("./")
      }.compact.join("\n").concat("\n")
    }
  end

  def skip_path?(path)
    dmg_metadata?(path) || system_dir_symlink?(path)
  end

  # unnecessary DMG metadata
  DMG_METADATA_FILES = %w[
                         .background
                         .com.apple.timemachine.donotpresent
                         .DocumentRevisions-V100
                         .DS_Store
                         .fseventsd
                         .MobileBackups
                         .Spotlight-V100
                         .TemporaryItems
                         .Trashes
                         .VolumeIcon.icns
                       ].to_set.freeze

  def dmg_metadata?(path)
    relative_root = path.sub(%r{/.*}, "")
    DMG_METADATA_FILES.include?(relative_root.basename.to_s)
  end

  def system_dir_symlink?(path)
    # symlinks to system directories (commonly to /Applications)
    path.symlink? && MacOS.system_dir?(path.readlink)
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
