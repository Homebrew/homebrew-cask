class Hbc::Container::Criteria
  attr_reader :path, :command

  def initialize(path, command)
    @path = path
    @command = command
  end

  def extension(regex)
    path.extname.sub(%r{^\.}, "") =~ Regexp.new(regex.source, regex.options | Regexp::IGNORECASE)
  end

  def magic_number(regex)
    # 262: length of the longest regex (currently: Hbc::Container::Tar)
    @magic_number ||= File.open(@path, "rb") { |f| f.read(262) }
    @magic_number =~ regex
  end
end
