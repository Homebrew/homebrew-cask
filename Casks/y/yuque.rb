cask "yuque" do
  version "4.2.1.1333,BJ573111a41a6d47e0a380a8cac832ae49"
  sha256 "671d849c158cd3e893d52d992b6cc855f3bd25f43caa73e776723c694c23a7b1"

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
    regex(/%2F([a-z0-9]+)%2FYuque[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
