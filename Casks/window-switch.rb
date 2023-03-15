cask "window-switch" do
  version "0.12"
  sha256 :no_check

  url "https://xpra.org/dists/osx/x86/Window-Switch.dmg"
  name "Window Switch"
  desc "Persistent remote display server and client"
  homepage "https://xpra.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Window-Switch.app"
end
