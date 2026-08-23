# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.20-mw.1/opencode-darwin-arm64"
  version "1.18.20-mw.1"
  sha256 "21357e8b83e7662eac88c2f84c3e86c5f91202254b46639cc6cfdc4bf8e1b597"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
