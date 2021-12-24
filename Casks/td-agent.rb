cask "td-agent" do
  version "4.3.0"
  sha256 "3fe1c06a46926a86df29c3d8d5967ac48fc109e9da4389c75afb38ee6e47179e"

  url "https://s3.amazonaws.com/packages.treasuredata.com/#{version.major}/macosx/td-agent-#{version}.dmg",
      verified: "s3.amazonaws.com/packages.treasuredata.com/"
  name "td-agent"
  desc "Fluentd distribution package"
  homepage "https://www.fluentd.org/"

  livecheck do
    url "https://td-agent-package-browser.herokuapp.com/#{version.major}/macosx"
    regex(/href=.*?td-agent[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "td-agent-#{version}.pkg"

  uninstall pkgutil:   [
    "com.treasuredata.tdagent",
    "test.treasuredatainc.pkg.td-agent",
  ],
            launchctl: "td-agent"
end
