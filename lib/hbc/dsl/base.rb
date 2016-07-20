class Hbc::DSL::Base
  extend Forwardable

  def initialize(cask, command = Hbc::SystemCommand)
    @cask = cask
    @command = command
  end

  def_delegators :@cask, :token, :version, :caskroom_path, :staged_path, :appdir

  def system_command(executable, options = {})
    @command.run!(executable, options)
  end

  def method_missing(method, *)
    underscored_class = self.class.name.gsub(%r{([[:lower:]])([[:upper:]][[:lower:]])}, '\1_\2').downcase
    section = underscored_class.downcase.split("::").last
    Hbc::Utils.method_missing_message(method, @cask.to_s, section)
    nil
  end
end
