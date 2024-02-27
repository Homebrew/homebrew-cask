cask "yuque" do
  version "3.4.0.1204,BJ5fbf5b1c7ce347449e93fd1cadb52e1d"
  sha256 "06be01615250aaf46aabcba8df7f570af21601dc33d85864d6c7356e9a00b6dc"

  url "https://app.nlark.com/yuque-desktop/#{version.csv.first}/#{version.csv.second}/Yuque-#{version.csv.first}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  # The stable version is that listed on the download page. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/111472
  livecheck do
    url "https://www.yuque.com/download/"
    regex(/yuque-desktop%2F(\d+(?:\.\d+)+)%2F([A-Za-z0-9]+).*?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
