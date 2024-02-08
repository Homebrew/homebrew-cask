cask "visualvm" do
  version "2.1.7"
  sha256 "5fb5298734c2946b028f14e49fdb111d04757526a69c6f5dd8563094d7da7ee8"

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
