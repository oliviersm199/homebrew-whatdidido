class Whatdidido < Formula
  include Language::Python::Virtualenv

  desc "Track your work across Jira and Linear with AI-powered summaries"
  homepage "https://github.com/oliviersm199/whatdididoagain"
  url "https://files.pythonhosted.org/packages/bb/f5/07632313f28d4f612b48d4bda09f0b75cc5aa447a72f140955e06d1213ee/whatdidido-0.1.6.tar.gz"
  sha256 "5572c67152af1ae46a517c5b39ace41dc28ee45a5161ce002d7a7a13bafd1fb0"
  license "MIT"

  depends_on "python@3.12"
  depends_on "rust" => :build

  def install
    # Set environment variable to prefer binary packages
    ENV["PIP_PREFER_BINARY"] = "1"
    virtualenv_install_with_resources
  end
end
