cask "x32-edit" do
  version "4.4.1,2f082091ef134225b3095541559bfb41"
  sha256 "65ad5512474beb5c54da421185d9a7e9479c95237fd6ca6c6f914c30b3dcd5ef"

  url "https://cdn-media.empowertribe.com/#{version.csv.second}/X32-Edit_MAC_#{version.csv.first}.zip"
  name "X32 Edit"
  desc "Remote control for Behringer X32 audio consoles"
  homepage "https://www.behringer.com/en/products/0603-ACE"

  livecheck do
    url :homepage, header: "RSC: 1"
    regex(%r{/(\h+)/X32[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  app "X32-Edit.app"

  zap trash: "~/Library/.X32-Edit"
end
