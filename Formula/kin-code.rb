class KinCode < Formula
  include Language::Python::Virtualenv

  desc "AI-powered coding assistant CLI"
  homepage "https://github.com/kinra-ai/kin-code"
  url "https://files.pythonhosted.org/packages/source/k/kin-code/kin_code-1.1.0.tar.gz"
  sha256 "de0e76006a92f5f8ba02d62e2bf3f83bbab6fc230bb18a88dd6b9e7bc533360e"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kin", shell_output("#{bin}/kin --version")
  end
end
