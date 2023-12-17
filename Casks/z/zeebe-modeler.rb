cask "zeebe-modeler" do
  version "0.11.0"
  sha256 "6d0e08b53959d4c38afe193fdc3f3113c0f46403a55574f4359d23d1e1313891"

  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip",
      verified: "github.com/zeebe-io/zeebe-modeler/"
  name "Zeebe Modeler"
  desc "Desktop Application for modeling Zeebe Workflows with BPMN"
  homepage "https://zeebe.io/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Zeebe Modeler.app"
end
