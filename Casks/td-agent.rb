cask "td-agent" do
  version "4.3.2"
  sha256 "dd6c0d2bdef0056a30d6422b843ed207465b3b87772e16c1f604dde5800db00b"

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
