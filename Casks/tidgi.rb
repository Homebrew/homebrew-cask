cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.7.13,0.7.13-15"
  sha256 arm:   "0993d2f6fa895b7dafaeb79c0cb00aec6d3172d361757ed649a6778b82893bff",
         intel: "2482e92fbc03e4f5588bcd110a48deee1350f3a1c87a476bb6fce53d36c33e19"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version.csv.second}/TidGi-darwin-#{arch}-#{version.csv.first}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/latest"
    regex(%r{href=.*?download/v?(\d+(?:\.\d+)*-\d+)/TidGi[._-]darwin[._-]#{arch}[._-](\d+(?:\.\d+)+).zip}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "TidGi.app"

  zap trash: [
    "~/Library/Application Support/TidGi",
    "~/Library/Caches/com.tidgi.app.ShipIt",
    "~/Library/Caches/com.tidgi.app",
    "~/Library/Preferences/com.tidgi.app.plist",
    "~/Library/Preferences/com.tidgi.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
