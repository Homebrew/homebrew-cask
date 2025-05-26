cask "wrkspace" do
  arch arm: "arm64", intel: "x64"

  version "2.0.11"
  sha256 arm:   "3ed6dca05983088f329f528c00a7721c315cc6002976b3f2b0037edef37ed8a3",
         intel: "2e8a8f0578d8ca660fdde482e184fc4a32b1e12da0a676ab3106da98ae8f7ce4"

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
