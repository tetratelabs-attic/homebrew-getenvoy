# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-1.11.1-e349fb6-930d4a5-darwin-release-x86_64.tar.gz"
    version "1.11.1"
    sha256 "3235bca94d1cb84354772045e77d02d27ab84be930e264b749c3889f7d9daccd"

    head do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-1.12.0-dev-f2129cb-930d4a5-darwin-release-x86_64.tar.gz"
        sha256 "5df762a46460290443fcd680e104548fd5977fd92f987e7401a096c477891220"
    end

    stable do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-1.11.1-e349fb6-930d4a5-darwin-release-x86_64.tar.gz"
        sha256 "3235bca94d1cb84354772045e77d02d27ab84be930e264b749c3889f7d9daccd"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end
