package Tickit::Widget::HelloWorld;

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

	$rb->eraserect($rect);

	$rb->text_at(0, 0, 'Hello, world');

	return;
}

1;

__END__
