class Wrk2 < Formula
  desc "Constant throughput, correct latency recording variant of wrk with ARM support"
  homepage "https://github.com/outsinre/wrk2"
  url "https://github.com/outsinre/wrk2/archive/refs/tags/1.0.0.tar.gz"
  sha256 "9cde716eaa06e1a8d39ac0c750dce83ab7035817c466353b9ca3061a14420177"
  license "Apache-2.0"
  head "https://github.com/outsinre/wrk2.git", branch: "master"

  depends_on "openssl@1.1"

  # conflicts_with "wrk-trello", because: "both install `wrk` binaries"

  def install
    ENV.deparallelize
    # Per https://luajit.org/install.html: If MACOSX_DEPLOYMENT_TARGET
    # is not set then it's forced to 10.4, which breaks compile on Mojave.
    ENV["MACOSX_DEPLOYMENT_TARGET"] = MacOS.version
    system "make"
    mv "wrk", "wrk2"
    bin.install "wrk2"
  end

  test do
    system "#{bin}/wrks", "-r", "5", "-c", "1", "-t", "1", "-d", "1", "https://example.com/"
  end
end
