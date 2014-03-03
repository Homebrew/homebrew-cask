class Cask::CLI::Cleanup
  def self.run(*_ignored)
    remove_dead_symlinks
    remove_cached_downloads
  end

  def self.remove_dead_symlinks
    ohai "Removing dead symlinks"
    HOMEBREW_CACHE_CASKS.children.select(&:symlink?).each do |symlink|
      unless symlink.exist?
        puts symlink
        symlink.unlink
      end
    end
  end

  def self.remove_cached_downloads
    message = "Removing cached downloads"
    days = 10
    outdated_timestamp = Time.now - (60 * 60 * 24 * days)
    if Cask.outdated
      message.concat(" older than #{days} days old")
    end
    ohai message
    HOMEBREW_CACHE_CASKS.children.select(&:symlink?).each do |symlink|
      file = Dir.chdir HOMEBREW_CACHE_CASKS do
        symlink.readlink.realpath
      end
      if !Cask.outdated or file.stat.mtime < outdated_timestamp
        puts file
        file.unlink
        symlink.unlink
      end
      incomplete_file = Pathname.new(file.to_s.concat('.incomplete'))
      if incomplete_file.exist? and
          (!Cask.outdated or incomplete_file.stat.mtime < outdated_timestamp)
        puts incomplete_file
        incomplete_file.unlink
      end
    end
  end

  def self.help
    "cleans up cached downloads"
  end
end
