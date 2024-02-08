cask "yo" do
  version "2.0.1"
  sha256 "115218ea1bf39e5aa301740d00a2b0e17a5f31c2bc2f4bff5becd2da77d791f7"

  url "https://github.com/sheagcraig/yo/releases/download/#{version}/yo-#{version}.pkg"
  name "Yo Scheduler"
  desc "Utility to emit Notification Center messages from the command-line"
  homepage "https://github.com/sheagcraig/yo"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "yo-#{version}.pkg"

  uninstall launchctl: [
              "com.sheagcraig.yo.login_once",
              "com.sheagcraig.yo.on_demand",
            ],
            pkgutil:   "com.sheagcraig.yo",
            delete:    "/usr/local/bin/yo_scheduler"
end
