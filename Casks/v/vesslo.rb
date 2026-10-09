cask "vesslo" do
  version "2.1.0"
  sha256 "367870a951257861ee58eba2acfe7d8fc8c50bfe8ab39a81b91b0d6fdf864c0d"

  url "https://github.com/hjm79/Vesslo-MacAppManager-release/releases/download/v#{version}/Vesslo.dmg"
  name "Vesslo"
  desc "App manager with source-aware updates and uninstall tools"
  homepage "https://vesslo.top/vesslo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Vesslo.app"

  zap trash: [
    "~/Library/Application Support/Vesslo",
    "~/Library/Logs/Vesslo",
    "~/Library/Preferences/top.hjm79.Vesslo.plist",
  ]
end
