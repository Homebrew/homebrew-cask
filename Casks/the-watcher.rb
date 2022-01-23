cask "the-watcher" do
  version "1.1"
  sha256 "c4db80b6f1daeeded41e1f1955ee6e5bb47a6ad38cdb91aff2b5e443986ef270"

  url "https://watcher.app/downloads/TheWatcher_v#{version}.zip"
  name "The Watcher"
  desc "Monitor ETH wallets, USD-ETH prices and gas prices"
  homepage "https://watcher.app/"

  livecheck do
    url "https://watcher.app/downloads/latest-version.txt"
    regex(/(\d+(?:\.\d+)+)/)
  end

  depends_on macos: ">= :big_sur"

  app "The Watcher.app"

  zap trash: [
    "~/Library/Application Scripts/io.galactic.web3console",
    "~/Library/Containers/io.galactic.web3console",
    "~/Library/Group Containers/2VV9TDDQG6.group.io.galactic.web3console",
  ]
end
