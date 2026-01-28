class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  url "https://github.com/co42/slackline/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "2634687d0018c7ccff75db8fd1fb6f37b8d860e735968c595a1c4bd4198914ca"
  license "MIT"
  head "https://github.com/co42/slackline.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
