cask "yuque" do
  version "3.4.6.1214,BJa8d3e80d05eb43f3ac22e5e41287e0cd"
  sha256 "a9c895c20f82a85d8e9ce4c5b7e61f3af1368bd7a7c741156c99fab61b0a8775"

  url "https://app.nlark.com/yuque-desktop/#{version.csv.first}/#{version.csv.second}/Yuque-#{version.csv.first}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  # The version on the download page is the stable version (see:
  # https://github.com/Homebrew/homebrew-cask/pull/111472)
  livecheck do
    url "https://www.yuque.com/download/"
    regex(/yuque-desktop%2Fv?(\d+(?:\.\d+)+)%2F([a-z0-9]+).*?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
