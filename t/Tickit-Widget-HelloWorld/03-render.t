use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;
use Tickit::Test;
use Tickit::Widget::HelloWorld;

# Test.
my $win = mk_window;
my $widget = Tickit::Widget::HelloWorld->new;
$widget->set_window($win);
flush_tickit;
my $right_termlog = [
	GOTO(0,0),
	SETPEN,
	PRINT('Hello, world'),
	SETPEN,
	ERASECH(68,0),
];
foreach my $i (1 .. 24) {
	push @{$right_termlog}, (
		GOTO($i,0),
		SETPEN,
		ERASECH(80,0),
	);
}
is_termlog($right_termlog, 'Test terminal log.');
is_display(['Hello, world'], 'Test display');
