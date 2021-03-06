# Generated by git-ship. See 'git-ship --man' for help or https://github.com/jhthorsen/app-git-ship
use ExtUtils::MakeMaker;
my %WriteMakefileArgs = (
  NAME           => 'JSON::Validator',
  AUTHOR         => 'Jan Henning Thorsen <jhthorsen@cpan.org>',
  LICENSE        => 'artistic_2',
  ABSTRACT_FROM  => 'lib/JSON/Validator.pm',
  VERSION_FROM   => 'lib/JSON/Validator.pm',
  EXE_FILES      => [qw()],
  BUILD_REQUIRES => {},
  TEST_REQUIRES  => {'Test::More' => '1.30'},
  PREREQ_PM      => {'Mojolicious' => '7.28'},
  META_MERGE     => {
    'dynamic_config' => 0,
    'meta-spec'      => {version => 2},
    'resources'      => {
      bugtracker => {web => 'https://github.com/jhthorsen/json-validator/issues'},
      homepage   => 'https://github.com/jhthorsen/json-validator',
      repository => {
        type => 'git',
        url  => 'https://github.com/jhthorsen/json-validator.git',
        web  => 'https://github.com/jhthorsen/json-validator',
      },
    },
  },
  test => {TESTS => (-e 'META.yml' ? 't/*.t' : 't/*.t xt/*.t')},
);

unless (eval { ExtUtils::MakeMaker->VERSION('6.63_03') }) {
  my $test_requires = delete $WriteMakefileArgs{TEST_REQUIRES};
  @{$WriteMakefileArgs{PREREQ_PM}}{keys %$test_requires} = values %$test_requires;
}

WriteMakefile(%WriteMakefileArgs);
