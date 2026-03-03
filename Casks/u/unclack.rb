cask "unclack" do
  version "1.3.0"
  sha256 "68d9a96cd3b7d6d85cb72e2b414cd097b287cc36d275c8c9078f73766c782a3b"

  url "https://unclack.app/app/#{version}/Unclack.dmg"
  name "Unclack"
  desc "Mutes your keyboard while you type"
  homepage "https://unclack.app/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Unclack\.dmg}i)
  end

  depends_on macos: ">= :sequoia"

  app "Unclack.app"

  zap trash: [
    "~/Library/Application Scripts/dev.ajkueterman.unclack*",
    "~/Library/Containers/dev.ajkueterman.unclack*",
  ]
end
