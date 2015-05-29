cask :v1 => 'xoterm' do
  version :latest
  sha256 :no_check

  # download from a mirror (the official site is unstable)
  url 'http://download2us.softpedia.com/dl/874d9eae3b8b8397ccc6ef6f791aa06d/55686198/400102319/mac/Utilities/xoterm_CurrentRelease.zip'
  name 'Xoterm'
  homepage 'http://jfbraun.com/xoterm/'
  license :commercial

  app 'Xoterm.app'
end
