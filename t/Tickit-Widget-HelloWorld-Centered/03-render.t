use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;
use Tickit::Test;
use Tickit::Widget::HelloWorld::Centered;

# Test.
my $win = mk_window;
my $widget = Tickit::Widget::HelloWorld::Centered->new;
$widget->set_window($win);
flush_tickit;
my $right_termlog = [];
foreach my $i (0 .. 11) {
	push @{$right_termlog}, (
		GOTO($i,0),
		SETPEN,
		ERASECH(80,0),
	);
}
push @{$right_termlog}, (
	GOTO(12,0),
	SETPEN,
	ERASECH(34,1),
	SETPEN,
	PRINT('Hello, world'),
	SETPEN,
	ERASECH(34,0),
);
foreach my $i (13 .. 24) {
	push @{$right_termlog}, (
		GOTO($i,0),
		SETPEN,
		ERASECH(80,0),
	);
}
is_termlog($right_termlog, 'Test terminal log.');
is_display([
	(' ') x 12,
	(' ' x 34).'Hello, world',
], 'Test display');
