class Cask::DSL::Base
  def initialize(cask, command = Cask::SystemCommand)
    @cask = cask
    @command = command
  end

  def system_command(executable, options = {})
    @command.run!(executable, options)
  end

  def title
    @cask.title
  end

  def version
    @cask.version
  end

  def caskroom_path
    @cask.class.caskroom.join(title)
  end

  def staged_path
    caskroom_path.join(@cask.version.to_s)
  end
end
