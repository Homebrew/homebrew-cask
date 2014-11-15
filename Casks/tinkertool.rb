cask :v1 => 'tinkertool' do
  version :latest
  sha256 :no_check

  url 'http://dl.macupdate.com/prod/TinkerTool.dmg'
  homepage 'http://www.bresink.com/osx/TinkerTool.html'
  license :unknown

  app 'TinkerTool.app'
end
