package Tickit::Widget::HelloWorld::Colour;

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

sub on_key {
	my ($self, $args) = @_;

	if ($args->type eq 'text' && $args->str =~ m/[0-7]/) {
		$self->set_style(fg => $args->str);
		return 1;
	}

	return 0;
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
