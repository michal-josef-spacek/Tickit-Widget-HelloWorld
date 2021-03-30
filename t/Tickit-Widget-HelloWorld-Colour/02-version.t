use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Tickit::Widget::HelloWorld::Colour;

# Test.
is($Tickit::Widget::HelloWorld::Colour::VERSION, 0.01, 'Version.');
