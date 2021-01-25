cask "visualvm" do
  version "2.0.6"
  sha256 "fc65863b25c3d5d79fdf79f866f0fba18e3dece9a59c871e1b1a7f89c09a6c57"

  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg",
      verified: "github.com/oracle/visualvm/"
  appcast "https://github.com/oracle/visualvm/releases.atom"
  name "VisualVM"
  homepage "https://visualvm.github.io/"

  app "VisualVM.app"

  caveats do
    depends_on_java
  end
end
