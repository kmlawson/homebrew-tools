class Ordb < Formula
  include Language::Python::Virtualenv

  desc "Fast, feature-rich command-line tool for searching Norwegian bokmål dictionary"
  homepage "https://github.com/kmlawson/ordb"
  url "https://files.pythonhosted.org/packages/85/8f/56f22eef88f8a9685b5c67c657b1274fc2ca5adbda24a8e50938afb76f59/ordb-0.5.5.tar.gz"
  sha256 "be6ee99f9a6e5668b66f94a50071261b456f43b8a136b0609aa85d261ba38e4e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ordb --version")
    assert_match "Norwegian", shell_output("#{bin}/ordb --help")
  end
end
