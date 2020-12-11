cask "unshaky" do
  version "0.6.3"
  sha256 "41da081ef3cadf7e714ef23d01f69e6b994680824df907784fbd090ab982f8f1"

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast "https://github.com/aahung/Unshaky/releases.atom"
  name "Unshaky"
  desc "Software fix for double key presses on Apple's butterfly keyboard"
  homepage "https://github.com/aahung/Unshaky"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Unshaky.app"

  zap trash: [
    "Library/Caches/com.nestederror.Unshaky",
    "Library/Preferences/com.nestederror.Unshaky.plist",
  ]
end
