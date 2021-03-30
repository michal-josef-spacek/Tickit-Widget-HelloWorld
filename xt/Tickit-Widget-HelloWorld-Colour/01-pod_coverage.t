use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Tickit::Widget::HelloWorld::Colour', 'Tickit::Widget::HelloWorld::Colour is covered.');
