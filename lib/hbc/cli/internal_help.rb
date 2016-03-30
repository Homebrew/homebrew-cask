class Hbc::CLI::InternalHelp < Hbc::CLI::InternalUseBase
  def self.run(*_ignored)
    max_command_len = Hbc::CLI.commands.map(&:length).max
    puts "Unstable Internal-use Commands:\n\n"
    Hbc::CLI.command_classes.each do |klass|
      next if klass.visible
      puts "    #{klass.command_name.ljust(max_command_len)}  #{help_for(klass)}"
    end
    puts "\n"
  end

  def self.help_for(klass)
    klass.respond_to?(:help) ? klass.help : nil
  end

  def self.help
    "Print help strings for unstable internal-use commands"
  end
end
