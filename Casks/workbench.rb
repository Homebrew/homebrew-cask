cask 'workbench' do
  version '1.0.0'
  sha256 'f33d1ba7c516d2b6fbde9912b12048fff357c6cdff11abfd136715acb586ee09'

  url "https://github.com/mxcl/Workbench/releases/download/#{version}/Workbench-#{version}.zip"
  appcast 'https://github.com/mxcl/Workbench/releases.atom'
  name 'Workbench'
  homepage 'https://github.com/mxcl/Workbench'

  app 'Workbench.app'
end
