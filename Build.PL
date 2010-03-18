use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'User::AccountChecker',
    license             => 'perl',
    dist_author         => q{Eric Villard <eric.villard@grenoble-em.com>},
    dist_version_from   => 'lib/User/AccountChecker.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'User-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
