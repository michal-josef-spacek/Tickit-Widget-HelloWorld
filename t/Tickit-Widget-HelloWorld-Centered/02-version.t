use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Tickit::Widget::HelloWorld::Centered;

# Test.
is($Tickit::Widget::HelloWorld::Centered::VERSION, 0.01, 'Version.');
