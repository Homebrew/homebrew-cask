cask "warsaw" do
  version :latest
  sha256 :no_check

  url "https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup.pkg",
      verified: "cloud.gastecnologia.com.br/bb/downloads/ws/"
  name "Warsaw"
  desc "Security software for online banking in Brazil"
  homepage "https://www.topazevolution.com/"

  depends_on :macos

  pkg "warsaw_setup.pkg"

  uninstall_postflight_steps do
    delete_keychain_certificate "Warsaw Personal CA"
    delete_keychain_certificate "127.0.0.1"
  end

  uninstall launchctl: [
              "com.topazofd.warsaw",
              "com.topazofd.warsaw.user",
            ],
            pkgutil:   "com.topazofd.warsaw"

  zap trash: [
    "/Library/Fonts/dbldwrsw.ttf",
    "/Library/LaunchAgents/com.topazofd.warsaw.user.plist",
    "/Library/LaunchDaemons/com.topazofd.warsaw.plist",
    "/usr/local/bin/warsaw",
    "/usr/local/etc/warsaw",
    "/usr/local/lib/warsaw",
    "/WS_*",
  ]
end
