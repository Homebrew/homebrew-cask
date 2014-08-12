class Cask::Decorator
  def initialize(module_, cask, command = Cask::SystemCommand)
    self.extend(module_)

    @cask = cask
    @command = command
  end

  def system_command(executable, options = {})
    @command.run!(executable, options)
  end

  def method_missing(m, *args, &block)
    if @cask.respond_to?(m)
      @cask.send(m, *args, &block)
    else
      super
    end
  end
end
