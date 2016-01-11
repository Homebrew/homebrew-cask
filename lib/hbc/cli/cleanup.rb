class Hbc::CLI::Cleanup < Hbc::CLI::Base
  OUTDATED_DAYS = 10
  OUTDATED_TIMESTAMP = Time.now - (60 * 60 * 24 * OUTDATED_DAYS)

  def self.help
    "cleans up cached downloads and tracker symlinks"
  end

  def self.run(*_ignored)
    cleanup_size = default.disk_cleanup_size
    default.cleanup!
    return unless cleanup_size > 0
    disk_space = Hbc::Utils.disk_usage_readable(cleanup_size)
    ohai "This operation has freed approximately #{disk_space} of disk space."
  end

  def self.default
    @default ||= new(HOMEBREW_CACHE_CASKS, Hbc.cleanup_outdated)
  end

  attr_reader :cache_location, :outdated_only
  def initialize(cache_location, outdated_only)
    @cache_location = Pathname(cache_location)
    @outdated_only = outdated_only
  end

  def cleanup!
    remove_dead_symlinks
    remove_all_cache_files
  end

  def cache_symlinks
    cache_location.children.select(&:symlink?)
  end

  def dead_symlinks
    cache_symlinks.reject(&:exist?)
  end

  def cache_incompletes
    cache_symlinks.collect do |symlink|
      incomplete_file = Dir.chdir cache_location do
        f = symlink.readlink
        f = f.realpath if f.exist?
        Pathname.new(f.to_s.concat('.incomplete'))
      end
      incomplete_file = nil unless incomplete_file.exist?
      incomplete_file = nil if outdated_only and incomplete_file and incomplete_file.stat.mtime > OUTDATED_TIMESTAMP
      incomplete_file
    end.compact
  end

  def cache_completes
    cache_symlinks.collect do |symlink|
      file = Dir.chdir cache_location do
        f = symlink.readlink
        f.exist? ? f.realpath : f
      end
      file = nil unless file.exist?
      if outdated_only and file and file.stat.mtime > OUTDATED_TIMESTAMP
        file = nil
        symlink = nil
      end
      [ symlink, file ]
    end.flatten.compact.sort { |x,y| x.to_s.count(File::SEPARATOR) <=> y.to_s.count(File::SEPARATOR) }
  end

  # will include dead symlinks if they aren't handled separately
  def all_cache_files
    cache_incompletes + cache_completes
  end

  def disk_cleanup_size
    Hbc::Utils.size_in_bytes(all_cache_files)
  end

  def remove_dead_symlinks
    ohai "Removing dead symlinks"
    delete_paths(dead_symlinks)
  end

  def remove_all_cache_files
    message = "Removing cached downloads"
    message.concat " older than #{OUTDATED_DAYS} days old" if outdated_only
    ohai message
    delete_paths(all_cache_files)
  end

  def delete_paths(paths)
    puts "Nothing to do" if paths.empty?
    paths.each do |item|
      puts item
      item.unlink
    end
  end
end
