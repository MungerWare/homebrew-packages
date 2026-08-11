# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.14-mw.1/opencode-darwin-arm64"
  version "1.18.14-mw.1"
  sha256 "863cd0b229449385000ecba6f28015d93dbb1ce0f5b30ae8b198c2bce058ab2f"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
