cask "tresorit" do
  version "3.5.2161.2400"
  sha256 :no_check

  url "https://installerstorage.blob.core.windows.net/public/install/Tresorit.dmg",
      verified: "installerstorage.blob.core.windows.net/"
  name "Tresorit"
  desc "Client for the Tresorit cloud storage service"
  homepage "https://tresorit.com/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["x-ms-meta-version"]
    end
  end

  app "Tresorit.app"

  uninstall login_item: "Tresorit"

  zap trash: [
    "~/Library/Application Support/Tresorit",
    "~/Library/Preferences/com.tresorit.mac.plist",
  ]
end
