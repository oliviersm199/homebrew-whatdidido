class Whatdidido < Formula
  include Language::Python::Virtualenv

  desc "Track your work across Jira and Linear with AI-powered summaries"
  homepage "https://github.com/oliviersm199/whatdididoagain"
  url "https://files.pythonhosted.org/packages/bb/f5/07632313f28d4f612b48d4bda09f0b75cc5aa447a72f140955e06d1213ee/whatdidido-0.1.3.tar.gz"
  sha256 "d111dd6598e6c8b31f156cfaea0f70981342837ff64c6bd74721e7589b5b2849"
  license "MIT"

  depends_on "python@3.12"
  depends_on "rust" => :build

  def install
    virtualenv_install_with_resources
  end
end
