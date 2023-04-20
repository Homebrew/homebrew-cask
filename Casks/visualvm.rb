cask "visualvm" do
  version "2.1.6"
  sha256 "1cb186d6a1a6ca864b5ba12989a3419c6e0ee54e614ada10d0480317522c81a8"

  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg",
      verified: "github.com/oracle/visualvm/"
  name "VisualVM"
  desc "All-in-One Java Troubleshooting Tool"
  homepage "https://visualvm.github.io/"

  app "VisualVM.app"

  zap trash: [
    "~/Library/Application Support/VisualVM",
    "~/Library/Caches/VisualVM",
  ]

  caveats do
    depends_on_java
  end
end
