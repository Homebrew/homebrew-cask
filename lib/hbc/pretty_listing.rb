class Hbc::PrettyListing
  attr_reader :cask
  def initialize(cask)
    @cask = cask
  end

  def print
    files = cask.staged_path.find.reject(&:directory?)
    puts "#{cask.staged_path} (#{files.length} files)"
  end
end
