cask "volanta" do
  version "1.4.14,13427659"
  sha256 "928a4979cdc4ee463700ccf44072c489ec50c4461b37a616b8d6b86fb7348b96"

  url "https://cdn.volanta.app/software/volanta-app/#{version.csv.first}-#{version.csv.second}/volanta-#{version.csv.first}.dmg"
  name "Volanta"
  desc "Personal flight tracker"
  homepage "https://volanta.app/"

  livecheck do
    url "https://api.volanta.app/api/v1/ClientUpdate/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(%r{volanta-app/(\d+(?:\.\d+)+)-(.+)/}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
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
