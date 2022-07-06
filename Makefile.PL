use lib 'inc';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Example widget with Hello World.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'Tickit-Widget-HelloWorld';
readme_from 'HelloWorld.pm';
recursive_author_tests('xt');
requires 'English' => 0;
requires 'perl' => '5.6.0';
resources 'bugtracker' => 'https://github.com/tupinek/Tickit-Widget-HelloWorld/issues';
resources 'homepage' => 'https://github.com/tupinek/Tickit-Widget-HelloWorld';
resources 'repository' => 'git://github.com/tupinek/Tickit-Widget-HelloWorld';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Tickit::Test' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
