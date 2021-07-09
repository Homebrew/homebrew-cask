cask "tempo" do
  version "5.21.0"

  if Hardware::CPU.intel?
    sha256 "6464b0fd2a0f9a3cc021e268456974d0596425484ead28e9cd9d865b21b1bed7"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "91e01e2ac220847de82ba1da7ae0392fb5eaa3d7cd0f31ab88753da2cf575ab3"

    url "https://download.yourtempo.co/release-arm64/Tempo-#{version}.dmg"
  end

  name "Tempo"
  desc "Email client that delivers all email in batches"
  homepage "https://www.yourtempo.co/"

  livecheck do
    url "https://download.yourtempo.co/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tempo.app"

  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/Logs/Tempo",
    "~/Library/Preferences/com.founders.mial.plist",
    "~/Library/Saved Application State/com.founders.mial.savedState",
  ]
end
