module InstallHelper
  class << self
    def install_without_artifacts(cask)
      Hbc::Installer.new(cask).tap do |i|
        i.download
        i.extract_primary_container
      end
    end
  end
end
