cask "td-agent" do
  version "4.4.0"
  sha256 "de943a10e3729304c3037fe56ab36fe5654bf7e5096c1b38d74fea86b94e4c47"

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
