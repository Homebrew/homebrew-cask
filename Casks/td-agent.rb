cask "td-agent" do
  version "4.3.1"
  sha256 "178d27db45efc10506c00484dc4c91a34cc6342d98f9ec705beb3b13b86d3e97"

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
