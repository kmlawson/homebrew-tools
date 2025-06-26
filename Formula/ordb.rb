class Ordb < Formula
  include Language::Python::Virtualenv

  desc "Fast, feature-rich command-line tool for searching Norwegian bokmål dictionary"
  homepage "https://github.com/kmlawson/ordb"
  url "https://files.pythonhosted.org/packages/f8/0f/70fccaf0a559ee299ce1026c2a22f7de089a9d2060a2799a22cdd9e6df1d/ordb-0.5.0.tar.gz"
  sha256 "175136300f286ba9badc9807046b057fb9f91d9b4ab2356e90c6857dd4c2efd9"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ordb --version")
    assert_match "Norwegian", shell_output("#{bin}/ordb --help")
  end
end
