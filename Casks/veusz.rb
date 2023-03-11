cask "veusz" do
  version "3.6"
  sha256 "c23d7593724f5398747c6858bc99fdc950633631dfc8d9224730eed682ada8f6"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version.major_minor}/veusz-#{version}-AppleOSX.dmg",
      verified: "github.com/veusz/veusz/"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  livecheck do
    url "https://github.com/veusz/veusz/releases/latest"
    regex(/href=.*?veusz[._-]v?(\d+(?:\.\d+)+)(?:[._-][^"' >]+)?\.dmg/i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  app "Veusz.app"

  zap trash: "~/Library/Preferences/org.veusz.veusz*.plist"
end
