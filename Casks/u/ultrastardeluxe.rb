cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2026.8.0"
  sha256 arm:   "6b5908ddd6aa1ae4887f5cdb3174a6c57b81182c9cdbf1530eefa52efe5e3299",
         intel: "1daade405590096b3f1f8681a101909882d38abe9fa12ca59d444a2450917317"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
