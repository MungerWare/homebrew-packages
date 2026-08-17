# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.12-mw.1/opencode-darwin-arm64"
  version "1.18.12-mw.1"
  sha256 "65e798601cc4153c0d799a7faf03a2df0bab6c71fdc2fb77e228d50ab4f6fbd1"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
