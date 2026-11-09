cask "visualvm" do
  version "2.2.2"
  sha256 "2ae9fe572b76320789b8f1a32674477b095659ba120e99e3386225cfa71991d0"

  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  name "VisualVM"
  desc "All-in-One Java Troubleshooting Tool"
  homepage "https://visualvm.github.io/"

  depends_on :macos

  app "VisualVM.app"

  zap trash: [
    "~/Library/Application Support/VisualVM",
    "~/Library/Caches/VisualVM",
  ]

  caveats do
    depends_on_java
  end
end
