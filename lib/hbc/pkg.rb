class Hbc::Pkg
  def self.all_matching(regexp, command)
    command.run("/usr/sbin/pkgutil", args: ["--pkgs=#{regexp}"]).stdout.split("\n").map { |package_id|
      new(package_id.chomp, command)
    }
  end

  attr_reader :package_id

  def initialize(package_id, command = Hbc::SystemCommand)
    @package_id = package_id
    @command = command
  end

  def uninstall
    odebug "Deleting pkg files"
    pkgutil_bom_files.each_slice(500) do |file_slice|
      @command.run("/bin/rm", args: file_slice.unshift("-f", "--"), sudo: true)
    end
    odebug "Deleting pkg symlinks and special files"
    pkgutil_bom_specials.each_slice(500) do |file_slice|
      @command.run("/bin/rm", args: file_slice.unshift("-f", "--"), sudo: true)
    end
    odebug "Deleting pkg directories"
    _deepest_path_first(pkgutil_bom_dirs).each do |dir|
      next unless dir.exist? && !MacOS.undeletable?(dir)
      _with_full_permissions(dir) do
        _clean_broken_symlinks(dir)
        _clean_ds_store(dir)
        _rmdir(dir)
      end
    end
    forget
  end

  def forget
    odebug "Unregistering pkg receipt (aka forgetting)"
    @command.run!("/usr/sbin/pkgutil", args: ["--forget", package_id], sudo: true)
  end

  def pkgutil_bom(*type)
    @command.run!("/usr/sbin/pkgutil", args: [*type, "--files", package_id].compact)
            .stdout
            .split("\n")
            .map { |path| root.join(path) }
  end

  def pkgutil_bom_files
    @pkgutil_bom_files ||= pkgutil_bom("--only-files")
  end

  def pkgutil_bom_dirs
    @pkgutil_bom_dirs ||= pkgutil_bom("--only-dirs")
  end

  def pkgutil_bom_all
    @pkgutil_bom_all ||= pkgutil_bom
  end

  def pkgutil_bom_specials
    pkgutil_bom_all - pkgutil_bom_files - pkgutil_bom_dirs
  end

  def root
    @root ||= Pathname(info.fetch("volume")).join(info.fetch("install-location"))
  end

  def info
    @command.run!("/usr/sbin/pkgutil", args: ["--pkg-info-plist", package_id])
            .plist
  end

  def _rmdir(path)
    @command.run!("/bin/rmdir", args: ["--", path], sudo: true) if path.children.empty?
  end

  def _with_full_permissions(path)
    original_mode = (path.stat.mode % 0o1000).to_s(8)
    # TODO: similarly read and restore macOS flags (cf man chflags)
    @command.run!("/bin/chmod", args: ["--", "777", path], sudo: true)
    yield
  ensure
    if path.exist? # block may have removed dir
      @command.run!("/bin/chmod", args: ["--", original_mode, path], sudo: true)
    end
  end

  def _deepest_path_first(paths)
    paths.sort do |path_a, path_b|
      path_b.to_s.split("/").count <=> path_a.to_s.split("/").count
    end
  end

  # Some pkgs leave broken symlinks hanging around; we clean them out before
  # attempting to rmdir to prevent extra cruft from lying around after
  # uninstall
  def _clean_broken_symlinks(dir)
    dir.children.each do |child|
      if _broken_symlink?(child)
        @command.run!("/bin/rm", args: ["--", child], sudo: true)
      end
    end
  end

  def _clean_ds_store(dir)
    ds_store = dir.join(".DS_Store")
    @command.run!("/bin/rm", args: ["--", ds_store], sudo: true) if ds_store.exist?
  end

  def _broken_symlink?(path)
    path.symlink? && !path.exist?
  end
end
