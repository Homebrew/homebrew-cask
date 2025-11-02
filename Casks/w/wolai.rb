cask "wolai" do
  arch arm: "-arm64"

  version "1.2.12"
  sha256 arm:   "7f2265c01389c70fe5b2127ec06b92630f766737da9723fedf83cd06d0507555",
         intel: "d3fd126f2d8683822d513a03871b944ea5f5e8a810d69fc836f277f8343d6ea6"

  url "https://cdn.wostatic.cn/dist/installers/wolai-#{version}#{arch}.dmg",
      verified: "cdn.wostatic.cn/dist/installers/"
  name "wolai for mac"
  desc "Cloud notes"
  homepage "https://www.wolai.com/"

  livecheck do
    url "https://static2.wolai.com/dist/installers/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/wolai",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
