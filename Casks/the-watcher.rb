cask "the-watcher" do
  version "1.2"
  sha256 "39b4a67b321fe34deae95c7c71eab062e4486b2572605752cf668f48e9f0af81"

  url "https://watcher.app/downloads/TheWatcher_v#{version}.zip"
  name "The Watcher"
  desc "Monitor ETH wallets, USD-ETH prices and gas prices"
  homepage "https://watcher.app/"

  livecheck do
    url "https://watcher.app/downloads/latest-version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "The Watcher.app"

  zap trash: [
    "~/Library/Application Scripts/io.galactic.web3console",
    "~/Library/Containers/io.galactic.web3console",
    "~/Library/Group Containers/2VV9TDDQG6.group.io.galactic.web3console",
  ]
end
