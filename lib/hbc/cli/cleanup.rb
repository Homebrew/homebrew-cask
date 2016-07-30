class Hbc::CLI::Cleanup < Hbc::CLI::Base
  OUTDATED_DAYS = 10
  OUTDATED_TIMESTAMP = Time.now - (60 * 60 * 24 * OUTDATED_DAYS)

  def self.help
    "cleans up cached downloads and tracker symlinks"
  end

  def self.needs_init?
    true
  end

  def self.run(*_ignored)
    cleanup_size = default.disk_cleanup_size
    default.cleanup!
    return unless cleanup_size > 0
    disk_space = disk_usage_readable(cleanup_size)
    ohai "This operation has freed approximately #{disk_space} of disk space."
  end

  def self.default
    @default ||= new(Hbc.cache, Hbc.cleanup_outdated)
  end

  attr_reader :cache_location, :outdated_only
  def initialize(cache_location, outdated_only)
    @cache_location = Pathname.new(cache_location)
    @outdated_only = outdated_only
  end

  def cleanup!
    remove_all_cache_files
  end

  def cache_files
    return [] unless cache_location.exist?
    cache_location.children
                  .map(&method(:Pathname))
                  .reject(&method(:outdated?))
  end

  def outdated?(file)
    outdated_only && file && file.stat.mtime > OUTDATED_TIMESTAMP
  end

  def incomplete?(file)
    file.extname == ".incomplete"
  end

  def cache_incompletes
    cache_files.select(&method(:incomplete?))
  end

  def cache_completes
    cache_files.reject(&method(:incomplete?))
  end

  def disk_cleanup_size
    Hbc::Utils.size_in_bytes(cache_files)
  end

  def remove_all_cache_files
    message = "Removing cached downloads"
    message.concat " older than #{OUTDATED_DAYS} days old" if outdated_only
    ohai message
    delete_paths(cache_files)
  end

  def delete_paths(paths)
    puts "Nothing to do" if paths.empty?
    paths.each do |item|
      puts item
      item.unlink
    end
  end
end
