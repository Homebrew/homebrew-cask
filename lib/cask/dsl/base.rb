class Cask::DSL::Base
  def initialize(cask, command = Cask::SystemCommand)
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
    @cask.class.caskroom.join(token)
  end

  def staged_path
    caskroom_path.join(@cask.version.to_s)
  end
end
