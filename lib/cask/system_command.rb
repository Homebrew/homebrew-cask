class Cask::SystemCommand
  def self.run(command)
    %x(#{command}).split("\n")
  end
end
