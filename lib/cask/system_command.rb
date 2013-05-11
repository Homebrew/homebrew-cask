class Cask::SystemCommand
  def self.run(command)
    %x(#{command} 2>&1).split("\n")
  end
end
