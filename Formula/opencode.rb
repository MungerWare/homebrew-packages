# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.21-mw.1/opencode-darwin-arm64"
  version "1.18.21-mw.1"
  sha256 "77ffb870ee522fa56b7e85e10610e0b808daa00283ec1e0f49a8b880d93ddc1a"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
