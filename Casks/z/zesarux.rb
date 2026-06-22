cask "zesarux" do
  arch arm: "silicon", intel: "intel"

  version "13.0"
  sha256 arm:   "6902cdf17a04ae65cb1b6d243788e627e0d9b7ead66139e66779006c5dbc7747",
         intel: "b6258aaa492c8790c5020da1a2bdedc91d7a9603a4e2a07211916735c6c3e266"

  url "https://github.com/chernandezba/zesarux/releases/download/ZEsarUX-#{version}/ZEsarUX_macos-#{arch}-#{version}.dmg"
  name "ZEsarUX"
  desc "ZX machines emulator"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    regex(/ZEsarUX[._-]v?([\dX]+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "ZEsarUX.app"

  zap trash: [
    "~/.zesaruxrc",
    "~/Library/Saved Application State/com.cesarhernandez.zesarux.savedState",
  ]
end
