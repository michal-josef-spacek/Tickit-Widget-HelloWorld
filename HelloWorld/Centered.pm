package Tickit::Widget::HelloWorld::Centered;

use base 'Tickit::Widget';
use strict;
use warnings;

our $VERSION = 0.01;

sub cols {
	return 12;
}

sub lines { 
	return 1;
}

sub render_to_rb {
	my ($self, $rb, $rect) = @_;

	my $win = $self->window;

	$rb->eraserect($rect);

	$rb->text_at(
		($win->lines - 1) / 2,
		($win->cols - 12) / 2,
		'Hello, world',
	);

	return;
}

1;

__END__
