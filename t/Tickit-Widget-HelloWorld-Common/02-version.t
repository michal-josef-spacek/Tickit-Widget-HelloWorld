use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Tickit::Widget::HelloWorld::Common;

# Test.
is($Tickit::Widget::HelloWorld::Common::VERSION, 0.01, 'Version.');
