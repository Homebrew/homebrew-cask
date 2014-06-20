class Cask::CLI::Cleanup < Cask::CLI::Base

  OUTDATED_DAYS = 10
  OUTDATED_TIMESTAMP = Time.now - (60 * 60 * 24 * OUTDATED_DAYS)

  def self.run(*_ignored)
    remove_dead_symlinks
    remove_all_cache_files
  end

  def self.cache_symlinks
    HOMEBREW_CACHE_CASKS.children.select(&:symlink?)
  end

  def self.dead_symlinks
    cache_symlinks.reject(&:exist?)
  end

  def self.cache_incompletes(outdated=nil)
    cache_symlinks.collect do |symlink|
      incomplete_file = Dir.chdir HOMEBREW_CACHE_CASKS do
        f = symlink.readlink
        f = f.realpath if f.exist?
        Pathname.new(f.to_s.concat('.incomplete'))
      end
      incomplete_file = nil unless incomplete_file.exist?
      incomplete_file = nil if outdated and incomplete_file and incomplete_file.stat.mtime > OUTDATED_TIMESTAMP
      incomplete_file
    end.compact
  end

  def self.cache_completes(outdated=nil)
    cache_symlinks.collect do |symlink|
      file = Dir.chdir HOMEBREW_CACHE_CASKS do
        f = symlink.readlink
        f.exist? ? f.realpath : f
      end
      file = nil unless file.exist?
      if outdated and file and file.stat.mtime > OUTDATED_TIMESTAMP
        file = nil
        symlink = nil
      end
      [ symlink, file ]
    end.flatten.compact.sort { |x,y| x.to_s.count(File::SEPARATOR) <=> y.to_s.count(File::SEPARATOR) }
  end

  # will include dead symlinks if they aren't handled separately
  def self.all_cache_files(outdated=nil)
    cache_incompletes(outdated) + cache_completes(outdated)
  end

  def self.space_in_megs(files)
    bytes = files.map { |f| begin File.size(f); rescue; 0; end }.reduce(&:+) || 0
    sprintf '%0.2f', bytes / (1024.0 * 1024.0)
  end

  def self.remove_dead_symlinks
    ohai "Removing dead symlinks"
    to_delete = dead_symlinks
    puts "Nothing to do" unless to_delete.count > 0
    to_delete.each do |item|
      puts item
      item.unlink
    end
  end

  def self.remove_all_cache_files
    message = "Removing cached downloads"
    message.concat " older than #{OUTDATED_DAYS} days old" if Cask.outdated
    ohai message
    to_delete = all_cache_files(Cask.outdated)
    puts "Nothing to do" unless to_delete.count > 0
    to_delete.each do |item|
      puts item
      item.unlink
    end
  end

  def self.help
    "cleans up cached downloads and tracker symlinks"
  end
end
