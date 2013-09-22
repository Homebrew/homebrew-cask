class Cask::Pkg
  def self.all_matching(regexp, command)
    command.run(%Q(pkgutil --pkgs="#{regexp}"), :print => false).map do |package_id|
      new(package_id.chomp, command)
    end
  end

  attr_reader :package_id

  def initialize(package_id, command)
    @package_id = package_id
    @command = command
  end

  def uninstall
    files.each do |file|
      @command.run('rm', :args => [file], :sudo => true) if file.exist?
    end
    _deepest_path_first(dirs).each do |dir|
      @command.run('chmod', :args => ['777', dir], :sudo => true)
      _clean_symlinks(dir)
      @command.run('rmdir', :args => [dir], :sudo => true) if dir.exist? && dir.children.empty?
    end
    forget
  end

  def forget
    @command.run('pkgutil', :args => ['--forget', package_id], :sudo => true)
  end

  def dirs
    _run('pkgutil', :args => ['--only-dirs', '--files', package_id]).map { |path| root.join(path) }
  end

  def files
    _run('pkgutil', :args => ['--only-files', '--files', package_id]).map { |path| root.join(path) }
  end

  def root
    @root ||= Pathname(info['volume']).join(info['install-location'])
  end

  def info
    @info ||= Plist::parse_xml(_run('pkgutil', :args => ['--pkg-info-plist', package_id]).join("\n"))
  end

  def _deepest_path_first(paths)
    paths.sort do |path_a, path_b|
      path_b.to_s.split('/').count <=> path_a.to_s.split('/').count
    end
  end

  def _run(command, options={})
    @command.run(command, options.merge(:print => false)).map(&:chomp)
  end

  def _clean_symlinks(dir)
    # Some pkgs leave broken symlinks hanging around; we clean them out before
    # attempting to rmdir to prevent extra cruft from lying around after
    # uninstall
    return unless dir.exist?
    dir.children.each do |child|
      @command.run('rm', :args => [child], :sudo => true) if child.symlink?
    end
  end
end
