module InstallHelper
  def install_without_artifacts(cask)
    Hbc::Installer.new(cask).tap do |i|
      shutup do
        i.download
        i.extract_primary_container
      end
    end
  end
end
