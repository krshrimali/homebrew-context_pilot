class ContextPilot < Formula
  desc "Get Context at your code cursor!"
  homepage "https://github.com/krshrimali/context-pilot-rs"
  url "https://github.com/krshrimali/context-pilot-rs/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "72c3a69a5ae256cffcc92ba124a1c013473af3ac0d764ca3ee7943223cf1f439"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/context_pilot", "--help"
  end
end
