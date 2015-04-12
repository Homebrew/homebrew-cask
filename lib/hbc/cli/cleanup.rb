class Hbc::CLI::Cleanup < Hbc::CLI::Base
  OUTDATED_DAYS = 10
  OUTDATED_TIMESTAMP = Time.now - (60 * 60 * 24 * OUTDATED_DAYS)

  def self.help
    "cleans up cached downloads and tracker symlinks"
  end

  def self.run(*args)
    default(cask_tokens_from(args)).cleanup!()
  end

  def self.default(cask_tokens="")
    new(HOMEBREW_CACHE_CASKS, Hbc.cleanup_outdated, cask_tokens)
  end

  attr_reader :cache_location, :cleanup_outdated, :cask_tokens
  def initialize(cache_location, cleanup_outdated, cask_tokens="")
    @cache_location = Pathname(cache_location)
    @cleanup_outdated = cleanup_outdated
    @cask_tokens = cask_tokens
  end

  def cleanup!()
    remove_deletable_symlinks()
    remove_cache_files()
  end

  def cache_symlinks
    cache_location.children.select(&:symlink?)
  end

  def filter_out_deletable(to_filter)
    if !(cask_tokens.empty?)
      deletable = Array.new
      to_filter.each do |item| 
        cask_tokens.each do |cask_token|
          deletable.push(item) if File.basename(item).include? cask_token
        end
      end
      deletable
    else
      to_filter
    end
  end

  def deletable_symlinks
    filter_out_deletable(cache_symlinks.reject(&:exist?))
  end

  def cache_incompletes(outdated=nil)
    cache_symlinks.collect do |symlink|
      incomplete_file = Dir.chdir cache_location do
        f = symlink.readlink
        f = f.realpath if f.exist?
        Pathname.new(f.to_s.concat('.incomplete'))
      end
      incomplete_file = nil unless incomplete_file.exist?
      incomplete_file = nil if outdated and incomplete_file and incomplete_file.stat.mtime > OUTDATED_TIMESTAMP
      incomplete_file
    end.compact
  end

  def cache_completes(outdated=nil)
    cache_symlinks.collect do |symlink|
      file = Dir.chdir cache_location do
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
  def deletable_cache_files(outdated=nil)
    all_cache_files = cache_incompletes(outdated) + cache_completes(outdated)
    filter_out_deletable(all_cache_files)
  end

  def space_in_megs(files)
    bytes = files.map { |f| begin File.size(f); rescue; 0; end }.reduce(&:+) || 0
    sprintf '%0.2f', bytes / (1024.0 * 1024.0)
  end

  def remove_deletable_symlinks()
    ohai "Removing dead symlinks"
    to_delete = deletable_symlinks
    puts "Nothing to do" unless to_delete.count > 0
    to_delete.each do |item|
      puts item
      item.unlink
    end
  end

  def remove_cache_files()
    message = "Removing cached downloads"
    message.concat " older than #{OUTDATED_DAYS} days old" if cleanup_outdated
    ohai message
    to_delete = deletable_cache_files(cleanup_outdated)
    puts "Nothing to do" unless to_delete.count > 0
    to_delete.each do |item|
      puts item
      item.unlink
    end
  end
end