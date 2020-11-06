cask "td-agent" do
  version "3.1.1-0"
  sha256 "aea92474070fc973315228dde287a32111d29cb52f4a94bc7f73cfa73d88afc8"

  # s3.amazonaws.com/packages.treasuredata.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/packages.treasuredata.com/#{version.major}/macosx/td-agent-#{version}.dmg"
  appcast "https://td-agent-package-browser.herokuapp.com/#{version.major}/macosx"
  name "td-agent"
  homepage "https://www.fluentd.org/"

  pkg "td-agent-#{version}.pkg"

  uninstall pkgutil:   "test.treasuredatainc.pkg.td-agent",
            launchctl: "td-agent"
end
