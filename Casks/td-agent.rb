cask "td-agent" do
  version "3.1.1-0"
  sha256 "aea92474070fc973315228dde287a32111d29cb52f4a94bc7f73cfa73d88afc8"

  url "https://s3.amazonaws.com/packages.treasuredata.com/#{version.major}/macosx/td-agent-#{version}.dmg",
      verified: "s3.amazonaws.com/packages.treasuredata.com/"
  name "td-agent"
  homepage "https://www.fluentd.org/"

  livecheck do
    url "https://td-agent-package-browser.herokuapp.com/#{version.major}/macosx"
    regex(/href=.*?td-agent[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "td-agent-#{version}.pkg"

  uninstall pkgutil:   "test.treasuredatainc.pkg.td-agent",
            launchctl: "td-agent"
end
