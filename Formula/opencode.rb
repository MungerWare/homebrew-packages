# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.13-mw.1/opencode-darwin-arm64"
  version "1.18.13-mw.1"
  sha256 "98fd2f1f7e43a075fee62d4c4a641ce54150c76b09e6baf6a708b9f9108c8e07"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
