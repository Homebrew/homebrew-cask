cask "visualvm" do
  version "2.0.4"
  sha256 "689ada9e2adc62c2747b4f3b660c0f63def9278b9a9b37183b5a2d564324919e"

  # github.com/oracle/visualvm/ was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast "https://github.com/oracle/visualvm/releases.atom"
  name "VisualVM"
  homepage "https://visualvm.github.io/"

  app "VisualVM.app"

  caveats do
    depends_on_java
  end
end
