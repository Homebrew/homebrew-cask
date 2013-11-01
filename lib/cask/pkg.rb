class Cask::Pkg
  def self.all_matching(regexp, command)
    command.run(%Q(pkgutil --pkgs="#{regexp}")).split("\n").map do |package_id|
      new(package_id.chomp, command)
    end
  end

  attr_reader :package_id

  def initialize(package_id, command=Cask::SystemCommand)
    @package_id = package_id
    @command = command
  end

  def uninstall
    files.each do |file|
      @command.run!('rm', :args => [file], :sudo => true) if file.exist?
    end
    _deepest_path_first(dirs).each do |dir|
      if dir.exist?
        _with_full_permissions(dir) do
          _clean_broken_symlinks(dir)
          _clean_ds_store(dir)
          _rmdir(dir)
        end
      end
    end
    forget
  end

  def forget
    @command.run!('pkgutil', :args => ['--forget', package_id], :sudo => true)
  end

  def dirs
    @command.run!('pkgutil',
      :args => ['--only-dirs', '--files', package_id]
    ).split("\n").map { |path| root.join(path) }
  end

  def files
    @command.run!('pkgutil',
      :args => ['--only-files', '--files', package_id]
    ).split("\n").map { |path| root.join(path) }
  end

  def root
    @root ||= Pathname(info.fetch('volume')).join(info.fetch('install-location'))
  end

  def info
    @command.run!('pkgutil',
      :args => ['--pkg-info-plist', package_id],
      :plist => true
    )
  end

  def _rmdir(path)
    if path.children.empty?
      @command.run!('rmdir', :args => [path], :sudo => true)
    end
  end

  def _with_full_permissions(path, &block)
    original_mode = (path.stat.mode % 01000).to_s(8)
    @command.run!('chmod', :args => ['777', path], :sudo => true)
    block.call
  ensure
    if path.exist? # block may have removed dir
      @command.run!('chmod', :args => [original_mode, path], :sudo => true)
    end
  end

  def _deepest_path_first(paths)
    paths.sort do |path_a, path_b|
      path_b.to_s.split('/').count <=> path_a.to_s.split('/').count
    end
  end

  # Some pkgs leave broken symlinks hanging around; we clean them out before
  # attempting to rmdir to prevent extra cruft from lying around after
  # uninstall
  def _clean_broken_symlinks(dir)
    dir.children.each do |child|
      if _broken_symlink?(child)
        @command.run!('rm', :args => [child], :sudo => true)
      end
    end
  end

  def _clean_ds_store(dir)
    ds_store = dir.join('.DS_Store')
    @command.run!('rm', :args => [ds_store], :sudo => true) if ds_store.exist?
  end

  def _broken_symlink?(path)
    path.symlink? && !path.readlink.exist?
  end
end
