cask "zeebe-modeler" do
  version "0.10.0"
  sha256 "db4f6d083717a3532c478e24d0156596c5076ff2a67b41981d9777ae990f69e4"

  # github.com/zeebe-io/zeebe-modeler/ was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip"
  appcast "https://github.com/zeebe-io/zeebe-modeler/releases.atom"
  name "Zeebe Modeler"
  desc "Desktop Application for modeling Zeebe Workflows with BPMN"
  homepage "https://zeebe.io/"

  app "Zeebe Modeler.app"
end
