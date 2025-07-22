cask "wrkspace" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "61249755619ed86102fd7a51b2598bf8df057f39e2f5d9e30f4443b7d8623136",
         intel: "491173b55dcc5778d44ff11ee94d809d8131f49f7a9a30d33c12008c73924a8a"

  url "https://updater.wrkspace.co/download/version/#{version}/darwin-#{arch}"
  name "Wrkspace"
  desc "All-in-one dev bootstrapper: one-click startup Docker, scripts, editor, and URLs"
  homepage "https://wrkspace.co/"

  livecheck do
    url "https://updater.wrkspace.co/update/darwin-#{arch}/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Wrkspace.app"

  zap trash: "~/Library/Application Support/Wrkspace",
      rmdir: "~/Documents/Wrkspace"
end
