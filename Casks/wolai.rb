cask "wolai" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.1.3"

  if Hardware::CPU.intel?
    sha256 "46cb51fb18901fb5cfd7ae99bb9968f6f638ee0bf54d4916e09bc03a46ba79ec"
  else
    sha256 "f93c0ad0ee63b0f80aa5d2632dc49255eb4ef06369f8e40e2e5dc10515b260ec"
  end

  url "https://cdn.wostatic.cn/dist/installers/wolai-#{version}#{arch}.dmg",
      verified: "cdn.wostatic.cn/dist/installers/"
  name "wolai for mac"
  desc "Cloud notes"
  homepage "https://www.wolai.com/"

  livecheck do
    url "https://wolai-public.oss-cn-shanghai.aliyuncs.com/dist/installers/electron-versions.json"
    strategy :page_match
    regex(/"version"\s*:\s*"(\d+(:?\.\d+)+)"/)
  end

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/wolai",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
