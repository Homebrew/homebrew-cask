cask "unclack" do
  version "1.2.0"
  sha256 "3f260fea020f4f2ed7ce7b0c9f7a300dd2987aebf7e5b4ba022e3adea6c306a9"

  url "https://unclack.app/app/#{version}/Unclack.dmg"
  name "Unclack"
  desc "Mutes your keyboard while you type"
  homepage "https://unclack.app/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Unclack\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Unclack.app"

  zap trash: [
    "~/Library/Application Scripts/dev.ajkueterman.unclack*",
    "~/Library/Containers/dev.ajkueterman.unclack*",
  ]
end
