cask "td-agent" do
  version "4.2.0"
  sha256 "f670067a052187c6ddc3464669eece49bd99dd929ce2c7ed1672ae525b3c8a85"

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
