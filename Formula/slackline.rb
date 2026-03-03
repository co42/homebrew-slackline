class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v0.5.0/slackline-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7c06b0d1153bf532443d827e11ae16de96848ad2f33f0d0f8158e7d6e9c029c"
    else
      url "https://github.com/co42/slackline/releases/download/v0.5.0/slackline-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b2cf99af7da669ecec308f9cea28ffae4f7944bd12883844dff3e6018e060c7"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v0.5.0/slackline-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a3cd9dc3484f7b26ddf4d0a9c84873b0be456c5e0e40e6eb232339e6e9c60094"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
