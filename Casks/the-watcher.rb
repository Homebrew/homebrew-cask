cask "the-watcher" do
  version "1.0"
  sha256 "3a38bb76f147a377f4ea25983bcf5bf6a883d08cc3a75d3317c2aba65fbe6bf6"

  url "https://watcher.app/downloads/TheWatcher_v#{version}.zip"
  name "The Watcher"
  desc "Monitor ETH wallets, USD-ETH prices and gas prices"
  homepage "https://watcher.app/"

  livecheck do
    url "https://watcher.app/downloads/latest-version.txt"
    regex(/(\d+(?:\.\d+)+)/)
  end

  depends_on macos: ">= :monterey"

  app "The Watcher.app"

  zap trash: [
    "~/Library/Application Scripts/io.galactic.web3console",
    "~/Library/Containers/io.galactic.web3console",
    "~/Library/Group Containers/2VV9TDDQG6.group.io.galactic.web3console",
  ]
end
