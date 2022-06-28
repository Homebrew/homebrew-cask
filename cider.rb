cask "cider" do
  version :latest
  sha256 :no_check

  url "https://github.com/ciderapp/Cider/releases/download/macos-beta/Cider.dmg"
  name "cider"
  desc "Open source and community oriented Apple Music"
  homepage "https://cider.sh/"

  app "Cider.app"
end
