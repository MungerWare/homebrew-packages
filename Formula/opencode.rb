# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.18-mw.1/opencode-darwin-arm64"
  version "1.18.18-mw.1"
  sha256 "d17fe7b501eaf56590b7ee61ac259851904ba969863a49057cc9584df524d4d7"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
