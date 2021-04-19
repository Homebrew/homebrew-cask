cask "timings" do
  version "3.2.8"
  sha256 "6990c248e0d680ab1fe9fab257d8ed07bc1f2c170b2fc882d78d13c7f14a5f77"

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  name "Timings"
  homepage "https://www.mediaatelier.com/Timings3/"

  livecheck do
    url "https://mediaatelier.com/Timings#{version.major}/feed.php"
    strategy :page_match
    regex(%r{href=.*?/Timings_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Timings.app"

  zap trash: [
    "~/Library/Preferences/com.mediaatelier.Timings.plist",
    "~/Library/Application Support/Timings",
    "~/Library/Caches/com.mediaatelier.Timings",
  ]
end
