cask "visualvm" do
  version "2.1.3"
  sha256 "26076f6ff2fc0f5f9bc188d9d2b51f179c97e069c15a1a2e564b0aeb0f8428d8"

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
