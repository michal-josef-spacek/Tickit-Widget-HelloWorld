use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Tickit::Widget::HelloWorld;

# Test.
is($Tickit::Widget::HelloWorld::VERSION, 0.01, 'Version.');
