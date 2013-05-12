class Cask::PkgInstaller
  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end

  def install
    @cask.installable_pkgs.each do |pkg|
      ohai "Running installer for #{@cask}; your password may be necessary."
      output = @command.run("sudo installer -pkg '#{pkg}' -target /")
      output.each do |line|
        ohai line
      end
    end
  end
end
