cask "volanta" do
  version "1.5.8,0fd67383"
  sha256 "31c659dc37b82af1c8abf72c5a2a85c58a5352d151efb0c4d3d859e2b73a88cc"

  url "https://cdn.volanta.app/software/volanta-app/#{version.csv.first}-#{version.csv.second}/volanta-#{version.csv.first}.dmg"
  name "Volanta"
  desc "Personal flight tracker"
  homepage "https://volanta.app/"

  livecheck do
    url "https://api.volanta.app/api/v1/ClientUpdate/latest-mac.yml"
    regex(%r{volanta-app/(\d+(?:\.\d+)+)-(.+)/}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Volanta.app"

  zap trash: [
    "~/Library/Application Support/Volanta",
    "~/Library/Logs/Volanta",
    "~/Library/Preferences/orbx.volanta.plist",
    "~/Library/Saved Application State/orbx.volanta.savedState",
  ]
end
