require "test_helper"

shared_examples_for Hbc::DSL::Base do
  it "supports the token method" do
    dsl.token.must_equal cask.token
  end

  it "supports the version method" do
    dsl.version.must_equal cask.version
  end

  it "supports the caskroom_path method" do
    dsl.caskroom_path.must_equal cask.caskroom_path
  end

  it "supports the staged_path method" do
    dsl.staged_path.must_equal cask.staged_path
  end

  it "supports the appdir method" do
    dsl.appdir.must_equal cask.appdir
  end
end
