cask "winbox@beta" do
  version "4.0beta3"
  sha256 "1c798996b466a3e89310d9065beb7f5d450cfedc4cfee925ff8f8a11cf01431c"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox.dmg"
  name "WinBox"
  desc "MikroTik Winbox"
  homepage "https://mikrotik.com/download"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"

  app "WinBox.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
