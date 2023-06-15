cask "wwdc" do
  version "7.4.2,1040"
  sha256 "023abb817eb971eb514c27c53a0e1fb55913e680e7293742201ed0a69df6faa5"

  url "https://github.com/insidegui/WWDC/releases/download/#{version.csv.first}/WWDC_v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/insidegui/WWDC/"
  name "WWDC"
  desc "Allows access to WWDC livestreams, videos and sessions"
  homepage "https://wwdc.io/"

  livecheck do
    url "https://github.com/insidegui/WWDC/releases/latest"
    regex(%r{href=.*?/WWDC[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0].tr("-", ",").to_s }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "WWDC.app"

  zap trash: [
    "~/Library/Application Support/io.wwdc.app",
    "~/Library/Application Support/io.wwdc.app.TranscriptIndexingService",
    "~/Library/Application Support/WWDC",
    "~/Library/Preferences/io.wwdc.app.plist",
  ]
end
