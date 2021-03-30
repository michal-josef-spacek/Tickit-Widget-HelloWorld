use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Tickit::Widget::HelloWorld::Colour');
}

# Test.
require_ok('Tickit::Widget::HelloWorld::Colour');
