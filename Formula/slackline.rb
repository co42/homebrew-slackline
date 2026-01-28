class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v0.4.0/slackline-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a020af5c2a6f1441fdd0109e7160d3d6c316b5e247901ac510531c8c22f8d858"
    else
      url "https://github.com/co42/slackline/releases/download/v0.4.0/slackline-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5a83e50152cc53f9ab61811f1a56665af0f3133d99b2bcbbcc2f3f2a8ea4b71"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v0.4.0/slackline-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2c7e3103e25a0cef55b75d586c14cdf10714660e73142e705b2004fc54621710"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
