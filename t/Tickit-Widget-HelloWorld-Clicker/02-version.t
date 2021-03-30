use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Tickit::Widget::HelloWorld::Clicker;

# Test.
is($Tickit::Widget::HelloWorld::Clicker::VERSION, 0.01, 'Version.');
