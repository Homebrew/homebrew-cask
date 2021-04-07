cask "vimac" do
  module Utils
    require "net/http"
    require "json"

    VERSION = "0.3.17".freeze

    def self.get(release, prop)
      base_uri = URI("https://install.appcenter.ms/api/v0.1/apps/dexterleng/vimac/distribution_groups/sparkle/releases/#{release}")
      JSON.parse(Net::HTTP.get(base_uri))[prop]
    end

    def self.releases
      base_uri = URI("https://install.appcenter.ms/api/v0.1/apps/dexterleng/vimac/distribution_groups/sparkle/public_releases?scope=tester")
      JSON.parse(Net::HTTP.get(base_uri))
    end
  end

  version Utils::VERSION
  sha256 :no_check

  url do
    release = Utils.releases.find { |v| v["short_version"] == Utils::VERSION }.compact["id"]
    (Utils.get release, "download_url").to_s
  end
  name "Vimac"
  desc "Vimium for your OS"
  homepage "https://vimacapp.com/"

  livecheck do
    url :homepage
    strategy :page_match do
      (Utils.get "latest", "short_version").to_s
    end
  end

  depends_on macos: ">= :mojave"

  app "Vimac.app"
end
