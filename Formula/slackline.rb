class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v0.3.0/slackline-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "f58369c27133956d835008129c0e7104e1c07841a0c52e5b3baeedc36189d4ea"
    else
      url "https://github.com/co42/slackline/releases/download/v0.3.0/slackline-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "51b77cd693f24e0b4f34fbe10f252b2ba64d43956ff1be877cd70d797260939c"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v0.3.0/slackline-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0125a63ee10943023064f6620b62113d3637c87e0dcb3c0860dfe1ab55e15e00"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
