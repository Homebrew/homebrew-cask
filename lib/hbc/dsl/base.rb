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
end
