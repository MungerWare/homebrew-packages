# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.35-mw.1/opencode-darwin-arm64"
  version "1.18.35-mw.1"
  sha256 "49dd1c67897123a39b605b8fbf63cb1201183a4eae5f6122d2f438ac2d365f7d"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
