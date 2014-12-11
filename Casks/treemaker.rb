cask :v1 => 'treemaker' do
  version '5.0.1'
  sha256 '2377c8c4277890de9f746eaa9d021f89fdd52cabfe9ab82fdfa741a47ed1f554'

  url 'http://www.langorigami.com/science/computational/treemaker/TreeMaker.dmg'
  homepage 'http://www.langorigami.com/science/computational/treemaker/treemaker.php'
  license :unknown    # todo: improve this machine-generated value

  app "TreeMaker #{version.to_i}.app"
end
