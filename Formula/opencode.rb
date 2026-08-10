# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.16-mw.1/opencode-darwin-arm64"
  version "1.18.16-mw.1"
  sha256 "48903c46f1905ac6b05031b39cec0e1eeef7c85a91dd712730bf7b8921cf01bd"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
