class Ordb < Formula
  include Language::Python::Virtualenv

  desc "Fast, feature-rich command-line tool for searching Norwegian bokmål dictionary"
  homepage "https://github.com/kmlawson/ordb"
  url "https://files.pythonhosted.org/packages/e4/f4/bbcaf604b2ca886c4dd30a487bf197411c51efed30d2d018f786270268f4/ordb-0.5.3.tar.gz"
  sha256 "b247c308d06cf2d3f3cf55dde7ba40565915384c96e1e9077c13afceade3689a"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ordb --version")
    assert_match "Norwegian", shell_output("#{bin}/ordb --help")
  end
end
