cask :v1 => 'treesheets' do
  version :latest
  sha256 :no_check

  url 'http://strlen.com/treesheets/treesheets_osx.zip'
  homepage 'http://strlen.com/treesheets/'
  license :unknown    # todo: improve this machine-generated value

  app 'TreeSheetsBeta/TreeSheets.app'
end
