cask "valley" do
  version "1.0"
  sha256 "e575ab26f29144b05695de7c245fd02ae5db0f0d0f66d66ea8a630ab800665bc"

  url "https://assets.unigine.com/d/Unigine_Valley-#{version}.dmg"
  name "Valley Benchmark"
  desc "Software to test performance and stability for PC hardware"
  homepage "https://benchmark.unigine.com/valley"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Unigine_Valley-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Valley.app"

  zap trash: [
    "~/Library/Application Support/Valley",
    "~/Library/Application Support/file__0.localstorage",
    "~/Library/Saved Application State/com.Unigine.Valley.savedState",
  ]
end
