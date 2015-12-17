class Hbc::WithoutSource < Hbc::Cask
  def initialize(sourcefile_path=nil)
    @sourcefile_path = sourcefile_path
    @token = sourcefile_path
  end

  # Override from `Hbc::DSL` because `@token` is set to the constructor argument
  # instead of `self.class.token` as in `Hbc::Cask`.
  def caskroom_path
    Hbc.caskroom.join(token)
  end

  # Override from `Hbc::DSL` because we don't have a cask source file to work
  # with, so we don't know the cask's `version`.
  def staged_path
    caskroom_path.children.first
  end

  def to_s
    "#{token} (!)"
  end

  def installed?
    caskroom_path.exist?
  end
end
