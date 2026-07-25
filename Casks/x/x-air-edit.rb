cask "x-air-edit" do
  version "1.8.1,f592010e1fca4b82b1c5f410004c2cb8"
  sha256 "30cf6ada86da5b90fb3115b39b4c8983829e9695a16258aeca5c2656bdc1d2d3"

  url "https://cdn-media.empowertribe.com/#{version.csv.second}/X-AIR-Edit_MAC_#{version.csv.first}.zip",
      verified: "cdn-media.empowertribe.com/"
  name "X AIR Edit"
  desc "Remote control for the Behringer X AIR series mixers"
  homepage "https://www.behringer.com/en/products/0605-AAD"

  livecheck do
    url :homepage
    regex(%r{/(\h+)/X[._-]AIR[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: :big_sur

  app "X-AIR-Edit.app"

  zap trash: "~/Library/.X-AIR-Edit"
end
