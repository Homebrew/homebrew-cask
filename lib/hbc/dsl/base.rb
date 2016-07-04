class Hbc::DSL::Base
  def initialize(cask, command = Hbc::SystemCommand)
    @cask = cask
    @command = command
  end

  def system_command(executable, options = {})
    @command.run!(executable, options)
  end

  def token
    @cask.token
  end

  def version
    @cask.version
  end

  def caskroom_path
    @cask.caskroom_path
  end

  def staged_path
    caskroom_path.join(@cask.version)
  end

  def appdir
    Hbc::DSL.appdir
  end

  def method_missing(method, *)
    underscored_class = self.class.name.gsub(%r{([[:lower:]])([[:upper:]][[:lower:]])}, '\1_\2').downcase
    section = underscored_class.downcase.split("::").last
    Hbc::Utils.method_missing_message(method, @cask.to_s, section)
    nil
  end
end
