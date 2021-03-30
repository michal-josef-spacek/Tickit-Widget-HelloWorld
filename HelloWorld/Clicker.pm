package Tickit::Widget::HelloWorld::Clicker;

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

sub on_mouse {
	my ($self, $args) = @_;

	return unless $args->type eq 'press' and $args->button == 1;

	push @{$self->{'_points'}}, [$args->line, $args->col];
	while (@{$self->{'_points'}} > 10) {
		shift @{$self->{'_points'}};
	}

	$self->redraw;	

	return 0;
}

sub render_to_rb {
	my ($self, $rb, $rect) = @_;

	my $win = $self->window;

	$rb->eraserect($rect);

	foreach my $point_ar (@{$self->{'_points'}}) {
		$rb->text_at(
			$point_ar->[0],
			$point_ar->[1],
			'Hello, world',
		);
	}

	return;
}

1;

__END__
