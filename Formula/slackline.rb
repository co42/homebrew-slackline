class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v1.0.0/slackline-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f03597a9b71d42afc1a37abbae654bbd0439cb2ca50b4ec2b8911450ce31d81"
    else
      url "https://github.com/co42/slackline/releases/download/v1.0.0/slackline-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "b2a403ae895236ab158434a4ca725c93ff0b49413e410daf37f7721a59be28d5"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v1.0.0/slackline-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f99a5120d551450169aec15842ad269e14016fec31730a8f305d35228ee77dd"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
