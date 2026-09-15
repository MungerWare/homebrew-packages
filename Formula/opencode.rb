# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.31-mw.1/opencode-darwin-arm64"
  version "1.18.31-mw.1"
  sha256 "0f1d9d39f6b7c68ea29943a654c2623f39bab6afe5359cea06e389cff2d0b206"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
