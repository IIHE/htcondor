# Fact: condor_version
#
# Purpose: Report the version of HTCondor
#
Facter.add(:condor_version) do
  setcode do
    next nil unless Facter::Util::Resolution.which('condor_version')
    Facter::Util::Resolution.exec('condor_version 2>&1').split('\n')[0].split(' ')[1]
  end
end
