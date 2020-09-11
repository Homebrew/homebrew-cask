cask "workbench" do
  version "1.0.9"
  sha256 "7fec7bf1fb93854ed87cbaf4d9e21ef964adfc064d731b82a84a499f5b911e1f"

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast "https://github.com/mxcl/Workbench/releases.atom"
  name "Workbench"
  desc "Seamless, automatic, “dotfile” sync to iCloud"
  homepage "https://github.com/mxcl/Workbench"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Workbench.app"
end
