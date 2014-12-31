class Cask::CLI::Base
  def self.command_name
    @command_name ||= self.name.sub(%r{^.*:}, '').gsub(%r{(.)([A-Z])}, '\1_\2').downcase
  end

  def self.visible
    true
  end

  def self.cask_tokens_from(args)
    args.reject { |a| a.chars.first == '-' }
  end

  def self.help
    "No help available for the #{command_name} command"
  end
end
