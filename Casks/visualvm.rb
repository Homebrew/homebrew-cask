cask "visualvm" do
  version "2.1.2"
  sha256 "f2f3dc4b1bb799b8c234c47be99fe65028d1995176e639e3c777d87fb76c53a5"

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
