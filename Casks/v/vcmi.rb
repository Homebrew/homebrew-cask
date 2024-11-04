cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.5.7"
  sha256 arm:   "e5ca822a78d6e0587dc8ea608d934b045a5855aa9ef3ffbea161ff05111e60f7",
         intel: "01b44d5297cbe087f77c3efbf0d3e6243001e46ee7da321a6155f3b82ada993a"

  url "https://github.com/vcmi/vcmi/releases/download/#{version}/VCMI-macOS-#{arch}.dmg",
      verified: "github.com/vcmi/vcmi/"
  name "VCMI"
  desc "Open-source engine for Heroes of Might & Magic III"
  homepage "https://vcmi.eu/"

  depends_on macos: ">= :high_sierra"

  app "VCMI.app"

  zap trash: [
    "~/Library/Application Support/vcmi",
    "~/Library/Logs/vcmi",
    "~/Library/Preferences/eu.vcmi.vcmi.plist",
    "~/Library/Saved Application State/eu.vcmi.vcmi.savedState",
  ]

  caveats do
    unsigned_accessibility
  end
end
