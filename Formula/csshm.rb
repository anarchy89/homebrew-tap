class Csshm < Formula
  desc "Cluster SSH for macOS Terminal: type once into many SSH sessions"
  homepage "https://github.com/anarchy89/csshm"
  url "https://github.com/anarchy89/csshm/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "b3cefdf5cab5321bb303c883a8391a934f6450832d0761d0b424b16b1fde3d75"
  license "GPL-3.0-or-later"
  head "https://github.com/anarchy89/csshm.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/csshm"
  end

  test do
    assert_match "csshm #{version}", shell_output("#{bin}/csshm --version")
    assert_match "Bad host", shell_output("#{bin}/csshm 'bad;host' 2>&1", 1)
  end
end
