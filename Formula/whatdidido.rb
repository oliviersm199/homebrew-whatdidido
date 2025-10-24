class Whatdidido < Formula
  include Language::Python::Virtualenv

  desc "Track your work across Jira and Linear with AI-powered summaries"
  homepage "https://github.com/oliviersm199/whatdididoagain"
  url "https://files.pythonhosted.org/packages/source/w/whatdidido/whatdidido-0.1.3.tar.gz"
  sha256 "d111dd6598e6c8b31f156cfaea0f70981342837ff64c6bd74721e7589b5b2849"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "whatdidido", shell_output("#{bin}/whatdidido --help")
  end
end
