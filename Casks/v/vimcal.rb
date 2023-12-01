cask "vimcal" do
  arch arm: "-arm64", intel: ""
  host_suffix = on_arch_conditional arm: "m1", intel: "production"

  version "1.0.25"
  sha256 arm:   "6cbc226dcd82089162c4032af83dd2764619254a9df90eab5212ad5f477ac16d",
         intel: "a07763ff4c6d3e1f2aa91674c425baf234d927402488df77030d30f4e6417642"

  # linked from sidebar of https://calendar.vimcal.com
  url "https://vimcal-#{host_suffix}.s3.us-west-1.amazonaws.com/Vimcal-#{version}#{arch}.dmg",
      verified: "vimcal-#{host_suffix}.s3.us-west-1.amazonaws.com/"
  name "Vimcal"
  desc "Calendar"
  homepage "https://vimcal.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :catalina"

  app "Vimcal.app"
end
