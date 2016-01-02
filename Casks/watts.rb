cask 'watts' do
  version '1.3.3'
  sha256 '706802ac56b523086d405cc56c5101f93b5ae886f6522775f66e9c6969b98331'

  # matchingbrackets.com is the official download host per the vendor homepage
  url 'http://www.matchingbrackets.com/abatt/customer/Watts-48.dmg'
  name 'Watts'
  homepage 'http://binarytricks.com/'
  license :commercial

  app 'Watts.app'
end
