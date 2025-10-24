class Whatdidido < Formula
  include Language::Python::Virtualenv

  desc "Track your work across Jira and Linear with AI-powered summaries"
  homepage "https://github.com/oliviersm199/whatdididoagain"
  url "https://files.pythonhosted.org/packages/bb/f5/07632313f28d4f612b48d4bda09f0b75cc5aa447a72f140955e06d1213ee/whatdidido-0.1.3.tar.gz"
  sha256 "d111dd6598e6c8b31f156cfaea0f70981342837ff64c6bd74721e7589b5b2849"
  license "MIT"

  depends_on "python@3.12"

  def install
    # Create virtualenv and install package with all dependencies using pip
    # This allows pip to use binary wheels for faster installation
    virtualenv_create(libexec, "python3.12")
    # Install pip into the virtualenv first
    system libexec/"bin/python", "-m", "ensurepip"
    system libexec/"bin/pip", "install", "--upgrade", "pip"
    # Install the package with all dependencies
    system libexec/"bin/pip", "install", "-v", buildpath
    bin.install_symlink libexec/"bin/whatdidido"
  end

  test do
    assert_match "whatdidido", shell_output("#{bin}/whatdidido --help")
  end
end
