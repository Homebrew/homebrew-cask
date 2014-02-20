class Cask::WithoutSource < Cask
  def staged_path
    caskroom_path.children.first
  end

  def initialize(sourcefile_path=nil)
    @sourcefile_path = sourcefile_path
    @token = sourcefile_path
  end

  def to_s
    "#{token} (!)"
  end

  def installed?
    caskroom_path.exist?
  end
end
